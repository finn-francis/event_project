class ProfilesController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  before_action :get_friends, only: [:show]

  def show
    @profile = @user.profile
    @events = @user.attending.sorted

    respond_to do |format|
      format.json do
        render json: @profile
      end

      format.html
    end
  end

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

  def get_friends
    @friends = @user.friends
  end

end
