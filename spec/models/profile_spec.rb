require 'rails_helper'

RSpec.describe Profile, type: :model do
  before do
    @user_one = User.create!(
      email: Faker::Internet.email,
      password: 'password',
      password_confirmation: 'password'
    )
  end

  it "should create a profile for each user on user create" do
    expect(Profile.count).to eq(1)
  end

  it "should only allow one profile per user" do
    fail_profile = Profile.new(user: @user_one)
    expect(fail_profile.valid?).to eq(false)
  end
end
