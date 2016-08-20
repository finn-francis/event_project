require 'rails_helper'

RSpec.describe Comment, type: :model do
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
      title: Faker::Internet.name,
      description: Faker::Lorem.paragraph,
      country: 'United Kingdom',
      city: 'Hoddesdon',
      postcode: 'EN11 8BX'
    )
  end

  describe 'Create' do
    before do
      @comment = @event.comments.create!(
        user: @user_one,
        body: Faker::Lorem.paragraph
      )
    end

    it 'should be available from both the user and the event' do
      expect(@event.comments).to include(@comment)
      expect(@user_one.comments).to include(@comment)
    end
  end
end
