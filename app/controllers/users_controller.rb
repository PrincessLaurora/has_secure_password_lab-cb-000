class UsersController < ApplicationController

  def home
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end

  def new
  end  

  def create
    User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
