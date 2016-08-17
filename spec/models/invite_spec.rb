require 'rails_helper'

RSpec.describe Invite, type: :model do
  before do
    @user_one = User.create!(
      email: Faker::Internet.email,
      password: 'password',
      password_confirmation: 'password'
    )

    @user_two = User.create!(
      email: Faker::Internet.email,
      password: 'password',
      password_confirmation: 'password'
    )

    @event = @user_two.events.create!(
      title: Faker::Internet.name,
      description: Faker::Lorem.paragraph,
      country: 'United Kingdom',
      city: 'Hoddesdon',
      postcode: 'EN11 8BX'
    )

    @invite_one = @user_two.invites.create!(
      event: @event,
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
      expect(@event.invites.length).to eq(1)
      expect(@event.invited.length).to eq(1)
      expect(@event.invited.first).to eq(@user_one)
    end
  end

  describe "A User accepts an invite" do
    before do
      @invite_one.update accepted: true
      @attendance = @user_one.attendances.first
    end

    it "should create a new attendance for the user" do
      expect(@attendance.event).to eq(@event)
    end

  end

end
