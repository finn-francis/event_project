require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  before do
    extend UserData
    extend EventData
    extend CommentData

    delete :destroy, event_id: @event_one.id, id: @comment_one.id, format: :html
  end

  it 'should respond with a 302 on deletion' do
    expect(response.status).to eq(302)
  end

end
