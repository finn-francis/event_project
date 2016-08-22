require 'rails_helper'

RSpec.describe Attendance, type: :model do
  before do
    extend UserData
    extend EventData
  end

  it " shoud add a user to the events attending list after creating an event" do
    expect(@event_one.attending).to include(@user_one)
    expect(@user_one.attending).to include(@event_one)
  end

  describe 'avoiding duplicate attendances' do
    before do
      @attendance = Attendance.new(
        user_id: @user_one.id,
        event_id: @event_one.id
      )
    end

    it 'should not allow multiple attendances from the same person' do
      expect(@attendance.valid?).to eq(false)
    end

  end

end
