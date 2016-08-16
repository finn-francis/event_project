require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create!(
      email: Faker::Internet.email,
      password: 'password',
      password_confirmation: 'password'
    )
  end

  describe 'A user creates an event' do
    before do
      @event = @user.events.create!(
        title: Faker::Internet.name,
        description: Faker::Lorem.paragraph,
        country: "United Kingdom",
        city: "Hoddesdon",
        postcode: "EN11 8BX"
      )
    end

    it 'should create a new event' do
      expect(Event.count).to eq(1)
      expect(@user.events.first).to eq(@event)
      expect(@event.valid?).to eq(true)
    end

    it 'should contain the users id as "organiser_id"' do
      expect(@event.organiser_id).to eq(@user.id)
    end
  end
end
