class CommentsController < ApplicationController
  before_action :find_event, only: [:create]

  def create
    @event.comments.create! comment_params
    redirect_to @event
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id)
  end

  def find_event
    @event = Event.find(params[:event_id])
  end

end
