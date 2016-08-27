require 'rails_helper'

RSpec.describe FriendRequest, type: :model do
  before do
    extend UserData
    @request = @user_one.friend_requests.create!(
      receiver: @user_two
    )
  end

  describe 'create' do
    it "should have a sender and a receiver" do
      expect(@request.sender).to eq(@user_one)
      expect(@request.receiver).to eq(@user_two)
    end

    it "should appear in the sender and receivers friend requests" do
      expect(@user_one.sent_requests).to include(@user_two)
      expect(@user_two.received_requests).to include(@user_one)
    end

    describe "accepting the request" do
      before do
        @request.update accepted: true
      end

      it "should create a friendship on acceptance" do
        expect(@user_one.friends).to include(@user_two)
        expect(@user_two.friends).to include(@user_one)
        expect(@user_two.friends.length).to eq(1)
        expect(@user_two.friends.length).to eq(1)
      end

      it "should make each user friends" do
        expect(@user_one.friends_with?(@user_two)).to eq(true)
        expect(@user_two.friends_with?(@user_one)).to eq(true)
      end

      describe "friend list" do
        before do
          @original_user_one_count = @user_one.friends.count
          @original_user_two_count = @user_two.friends.count
          @original_user_three_count = @user_three.friends.count

          @request_two = FriendRequest.create!(
            sender: @user_one,
            receiver: @user_three
          )

          @request_two.update accepted: true
        end

        it "each user should have a seperate friends list" do
          expect(@user_one.friends.count).to eq(@original_user_one_count + 1)
          expect(@user_three.friends.length).to eq(@original_user_three_count + 1)
        end
      end
    end
  end
end
