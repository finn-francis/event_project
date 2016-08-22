require 'rails_helper'

RSpec.describe Event, type: :model do
  before do
    extend UserData
    extend EventData
  end

  describe 'A user creates an event' do
    it 'should create a new event' do
      expect(Event.count).to eq(2)
      expect(@user_one.events.first).to eq(@event_one)
      expect(@event_one.valid?).to eq(true)
    end

    it 'should contain the users id as "organiser_id"' do
      expect(@event_one.organiser_id).to eq(@user_one.id)
    end
  end

  describe "geocoding" do
    it "automatically geocodes the event on save" do
      expect(@event_one.latitude).to be_within(0.000001).of 51.7600069999999
      expect(@event_one.longitude).to be_within(0.000001).of -0.015042
    end
  end
end
