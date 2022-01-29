class UsersController < ApplicationController
  def index
    # redirect_to root_path
    @users = User.all
  end

  def show
    @user = User.find(current_user[:id])
    # render json: @user, status: 200
  end

  def destroy
    @user = User.find(current_user[:id])
    @user.update(display: false)

    redirect_to destroy_user_session_path
  end
end
