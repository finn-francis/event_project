class UsersController < ApplicationController

  def invites
    @invited = current_user.invited_to.pending_invites
  end

end
