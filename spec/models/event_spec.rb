require 'rails_helper'

RSpec.describe Event, type: :model do
  before do
    extend UserData
    extend EventData
  end

  it "should return the location of the event" do
    expect(@event_one.location).to eq("United Kingdom Hoddesdon")
  end

  describe 'A user creates an event' do
    it 'should create a new event' do
      expect(Event.count).to eq(4)
      expect(@user_one.events.first).to eq(@event_one)
      expect(@event_one.valid?).to eq(true)
    end

    it 'should contain the users id as "organiser_id"' do
      expect(@event_one.organiser_id).to eq(@user_one.id)
    end

    it 'should give the organiser moderator rights on creation' do
      expect(@event_one.moderators).to include(@user_one)
    end
  end

  describe "geocoding" do
    it "automatically geocodes the event on save" do
      expect(@event_one.latitude).to be_within(0.000001).of 51.7600069999999
      expect(@event_one.longitude).to be_within(0.000001).of -0.015042
    end

    describe "distance" do
      it "should calculate the distance between an event and a user location" do
        expect(@event_four.distance_to(@user_one.profile)).to be_within(0.0001).of(132.0051056154097)
        expect(@event_four.distance(@user_one)).to eq(132)
      end
    end
  end
end
