require 'rails_helper'

RSpec.describe Invite, type: :model do
  before do
    extend UserData
    extend EventData

    @invite_one = @user_two.invites.create!(
      event: @event_one,
      invited: @user_one
    )
  end

  describe 'A user creates an invite' do
    it 'should be available through both the inviter and the invited' do
      expect(@user_two.invites).to include(@invite_one)
      expect(@user_one.invited_to).to include(@invite_one)
    end

    it 'should know who the invited and the inviter are' do
      expect(@invite_one.inviter).to eq(@user_two)
      expect(@invite_one.invited).to eq(@user_one)
    end

    it 'should register in the event invites' do
      expect(@event_one.invites.length).to eq(1)
      expect(@event_one.invited.length).to eq(1)
      expect(@event_one.invited.first).to eq(@user_one)
    end
  end

  describe "A User accepts an invite" do
    before do
      @invite_one.update accepted: true
    end

    it "should create a new attendance for the user" do
      expect(@user_one.attending).to include(@event_one)
    end
  end

  describe "A duplicate invite is made" do
    before do
      @bad_invite = @user_two.invites.new(
        event: @event_one,
        invited: @user_one
      )
    end

    it "should not allow duplicate invites" do
      expect(@bad_invite.valid?).to eq(false)
    end
  end
end
