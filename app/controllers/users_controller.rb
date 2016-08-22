class UsersController < ApplicationController

  def invites
    @invited = current_user.invited_to.pending_invites
  end

  def friend_request
    current_user.friend_requests.create!(
      receiver: find_receiver
    )
    redirect_to user_profile_path(@receiver)
  end

  private

  def find_receiver
    @receiver = User.find(params[:receiver_id])
  end

end
