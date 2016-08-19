require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do
  before do
    @user = User.create!(
      email: Faker::Internet.email,
      password: 'password',
      password_confirmation: 'password'
    )

    @profile = @user.profile

    @profile.update!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      description: Faker::Lorem.paragraph
    )

    get :show, user_id: @user.id, format: :json
  end

  it "should return json" do
    expect(response.content_type).to eq("application/json")
    expect(response.body).to include(@profile.first_name)
    expect(response.body).to include(@profile.last_name)
    expect(response.body).to include(@profile.description)
  end
end
