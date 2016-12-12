class ProtectedController < ApplicationController
  before_action :require_login

  def require_login
    unless session[:user_id]
      flash[:message] = "You must be logged in to view this."
      redirect_to login_path
    end
  end
end
