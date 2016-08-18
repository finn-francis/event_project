class ProfilesController < ApplicationController
  before_action :find_user, only: [:edit, :update]

  def edit
    @profile = @user.profile
  end

  def update
    @user.profile.update profile_params
    redirect_to root_path
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :description, :country, :city, :image_url)
  end

  def find_user
    @user = User.find(params[:user_id])
  end

end
