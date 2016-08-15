require 'rails_helper'

RSpec.describe Event, type: :model do
  User = Struct.new(:id)

  describe Event do
    before do
      @user = User.new
      @user.id = 1
    end

    describe "A user creates a new event" do
      before do
        @event = Event.create!(organiser_id: @user.id)
      end

      it "allows any user to create a new event" do
        expect(Event.count).to eq(1)
        expect(Event.where(organiser_id: @user.id).first).to eq(@event)
      end

    end
  end

end
