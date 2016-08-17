require 'rails_helper'

RSpec.describe Event, type: :model do
  before do
    @user_one = User.create!(
      email: Faker::Internet.email,
      password: 'password',
      password_confirmation: 'password'
    )

    @event = @user_one.events.create!(
      title: Faker::Company.name,
      description: Faker::Lorem.paragraph,
      country: "United Kingdom",
      city: "Hoddesdon",
      postcode: "EN11 8BX",
      organiser_id: 1
    )
  end

  describe "geocoding" do
    it "automatically geocodes the event on save" do
      expect(@event.latitude).to be_within(0.000001).of 51.7600069999999
      expect(@event.longitude).to be_within(0.000001).of -0.015042
    end
  end
end
