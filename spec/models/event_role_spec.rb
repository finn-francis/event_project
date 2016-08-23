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

  describe "moderators deleteing comments" do
    before do
      @ability = Ability.new(@user_one)
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

end
