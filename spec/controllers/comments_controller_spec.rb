require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  before do
    @user = User.create!(
      email: Faker::Internet.email,
      password: 'password',
      password_confirmation: 'password'
    )

    @event = @user.events.create!(
      title: Faker::Company.name,
      description: Faker::Lorem.paragraph,
      country: "United Kingdom",
      city: "Hoddesdon",
      postcode: "EN11 8BX",
      organiser_id: 1
    )

    @comment = @event.comments.create!(user: @user, body: Faker::Lorem.paragraph)

    delete :destroy, event_id: @event.id, id: @comment.id, format: :html
  end

  it 'should respond with a 302 on deletion' do
    expect(response.status).to eq(302)
  end

end
