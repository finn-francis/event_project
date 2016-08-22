require 'rails_helper'

RSpec.describe FriendRequest, type: :model do
  describe "friend list" do
    before do
      extend UserData
      Friendship.create!(
        user_id: @user_one.id,
        friend_id: @user_two.id
      )

      Friendship.create!(
        user_id: @user_one.id,
        friend_id: @user_three.id
      )
    end

    it "each user should have a seperate friends list" do
      expect(@user_one.friends.length).to eq(2)
      expect(@user_two.friends.length).to eq(1)
      expect(@user_three.friends.length).to eq(1)
    end
  end
end
