require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do
  before do
    extend UserData

    get :show, user_id: @user_one.id, format: :json
  end

  it "should return json" do
    expect(response.content_type).to eq("application/json")
    expect(response.body).to include(@profile_one.first_name)
    expect(response.body).to include(@profile_one.last_name)
    expect(response.body).to include(@profile_one.description)
  end
end
