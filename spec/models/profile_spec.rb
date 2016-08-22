require 'rails_helper'

RSpec.describe Profile, type: :model do
  before do
    extend UserData
  end

  it "should create a profile for each user on user create" do
    expect(Profile.count).to eq(3)
  end

  it "should only allow one profile per user" do
    fail_profile = Profile.new(user: @user_one)
    expect(fail_profile.valid?).to eq(false)
  end

  describe "geocoding" do
    it "should caluculate lat and long on save" do
      expect(@profile_one.latitude).to be_within(0.000001).of 51.7600069999999
      expect(@profile_one.longitude).to be_within(0.000001).of -0.015042
    end
  end

end
