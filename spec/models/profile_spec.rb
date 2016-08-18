require 'rails_helper'

RSpec.describe Profile, type: :model do
  before do
    @user_one = User.create!(
      email: Faker::Internet.email,
      password: 'password',
      password_confirmation: 'password'
    )
    @fail_profile = Profile.new(user: @user_one)
  end

  it "should create a profile for each user on user create" do
    expect(Profile.count).to eq(2)
  end

  it "should only allow one profile per user" do
    expect(@fail_profile.valid?).to eq(false)
  end

  describe "geocoding" do
    before do
      @profile = @user_one.profile
      @profile.update(
        country: "United Kingdom",
        city: "Hoddesdon"
      )
    end

    it "should caluculate lat and long on save" do
      expect(@profile.latitude).to be_within(0.000001).of 51.7600069999999
      expect(@profile.longitude).to be_within(0.000001).of -0.015042
    end
  end

end
