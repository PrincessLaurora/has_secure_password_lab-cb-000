class UsersController < ApplicationController

  def home
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end

end
