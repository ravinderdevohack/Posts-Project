class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(current_user[:id])
    # render json: @user, status: 200
  end
end
