class CommentsController < ApplicationController
  before_action :find_event, only: [:create]

  def create
    @comment = @event.comments.create!(comment_params)
    respond_to do |format|
      format.html do
        redirect_to @event
      end

      format.js
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id)
  end

  def find_event
    @event = Event.find(params[:event_id])
  end

end
