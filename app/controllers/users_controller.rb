class UsersController < ApplicationController

  def home
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end

  def new
  end

  def create
    @user = User.create(user_params)
    if @user.save
    else
      redirect_to(controller: 'users', action: 'new')
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
