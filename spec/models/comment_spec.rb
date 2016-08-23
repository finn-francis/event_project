require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Create' do
    before do
      extend UserData
      extend EventData
      extend CommentData
    end

    it 'should be available from both the user and the event' do
      expect(@event_one.comments).to include(@comment_one)
      expect(@user_two.comments).to include(@comment_one)
    end
  end
end
