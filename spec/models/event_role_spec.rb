require 'rails_helper'

RSpec.describe EventRole, type: :model do
  before do
    extend UserData
    extend EventData
  end

  it "should not allow duplicate event roles" do
    @false_event_role = EventRole.new(
      user: @user_one,
      event: @event_one,
      role: Role.find_by(name: 'moderator')
    )

    expect(@false_event_role.valid?).to eq(false)
  end

  describe "moderators" do
    before do
      @ability = Ability.new(@user_one)
    end

    it "should keep a list of all the moderators" do
      expect(@event_one.moderators.length).to eq(1)
      expect(@event_one.moderators).to include(@user_one)
    end

    describe "on an event in which they are a moderator" do
      it "should allow a moderator to delete someone elses comment" do
        expect(@ability.can?(:destroy, @comment_one)).to eq(true)
      end

      it "should not allow they to delete an event on which they are not a moderator" do
        expect(@ability.can?(:destroy, @comment_three)).to eq(false)
      end
    end
  end

  describe "banning a user from an event" do
    before do
      @event_one.ban_user(@user_three)
      @ability_two = Ability.new(@user_three)
    end

    it "should not allow banned users to visit the event page they where banned on" do
      expect(@event_one.banned_users).to include(@user_three)
      expect(@ability_two.can?(:read, @event_one)).to eq(false)
    end
  end

end
