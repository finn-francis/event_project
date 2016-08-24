class InvitesController < ApplicationController
  before_action :find_invite, only: [:update]
  before_action :find_invited, only: [:create]

  def create
    thing = Invite.create invite_params
    respond_to do |format|
      format.js
    end
  end

  def update
    case params[:button]
    when 'true'
      @invite.update accepted: true
    when 'false'
      @invite.update accepted: false
    end

    @event = @invite.event
    redirect_to @event
  end

  private

  def invite_params
    params.require(:invite).permit(:inviter_id, :invited_id, :event_id, :accepted)
  end

  def find_invite
    @invite = Invite.find(params[:id])
  end

  def find_invited
    @invited = User.find(params[:invite][:invited_id])
  end

end
