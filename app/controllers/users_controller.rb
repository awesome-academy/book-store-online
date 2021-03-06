class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:info] = t "success_notify"
      redirect_to root_url
    else
      flash[:danger] = t ".faild_notify"
      render :new
    end
  end

  def show; end

  private

  def user_params
    params.require(:user).permit User::USERS_PARAMS
  end
end
