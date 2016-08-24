class FriendshipsController < ApplicationController
  before_action :find_user, only: [:index]
  before_action :find_event, only: [:index]
  before_action :find_friends, only: [:index]

  def index
    respond_to do |format|
      format.js
    end
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def find_friends
    @friends = @user.friends - @event.attending
  end

  def find_event
    @event = Event.find(params[:event_id])
  end

end
