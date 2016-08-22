require 'rails_helper'

RSpec.describe FriendRequest, type: :model do
  describe 'create' do
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

      @request = @user_one.friend_requests.create!(
        receiver: @user_two
      )
    end

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

    end
  end
end
