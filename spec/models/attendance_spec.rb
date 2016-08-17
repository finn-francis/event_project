require 'rails_helper'

RSpec.describe Attendance, type: :model do
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

    @event = @user_two.events.create!(
      title: Faker::Company.name,
      description: Faker::Lorem.paragraph,
      country: 'United Kingdom',
      city: 'Hoddesdon',
      postcode: 'EN11 8BX'
    )
  end

  it " shoud add a user to the events attending list after creating an event" do
    expect(@event.attending).to include(@user_two)
    expect(@user_two.attending).to include(@event)
  end

end
