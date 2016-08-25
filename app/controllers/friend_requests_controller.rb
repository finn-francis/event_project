class FriendRequestsController < ApplicationController
  before_action :find_request, only: :update

  def create
    current_user.friend_requests.create!(
      receiver: find_receiver
    )
    redirect_to user_profile_path(@receiver)
  end

  def index
    @friend_requested = current_user.friend_requested.filtered
  end

  def update
    @request.update accepted: button_value
    redirect_to user_profile_path(@request.sender)
  end

  private

  def find_request
    @request = FriendRequest.find(params[:id])
  end

  def find_receiver
    @receiver = User.find(params[:user_id])
  end

  def button_value
    params[:button]
  end

end
