class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def create
    @user = User.create(user_params)
    login(@user) 
    redirect_to @user
  end
end
