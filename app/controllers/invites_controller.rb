class InvitesController < ApplicationController
  before_action :find_invite, only: [:update]

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

  def find_invite
    @invite = Invite.find(params[:id])
  end

end
