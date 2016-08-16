class UsersController < ApplicationController

  def invites
    @invited = current_user.invited_to
  end

end
