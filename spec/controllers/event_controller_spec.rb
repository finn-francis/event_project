require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  before do
    extend UserData
    extend PaginationData
  end

  describe "paginating events" do
    before do
      get :index
    end

    it "should return 10 events per page" do
      expect(assigns[:events].length).to eq(10)
    end
  end

  describe 'paginating comments' do
    before do
      get :show, id: @event.id
    end

    it "should return 20 comments per page" do
      expect(assigns[:comments].length).to eq(20)
    end
  end
end
