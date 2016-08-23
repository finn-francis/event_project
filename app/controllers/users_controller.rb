class UsersController < ApplicationController
  before_action :find_event, only: [:update]
  before_action :find_user, only: [:update]

  def invites
    @invited = current_user.invited_to.pending_invites
  end

  def update
    @event.ban_user(@user)
    redirect_to @event
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def find_event
    @event = Event.find(params[:event_id])
  end

end
