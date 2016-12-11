class LoginController < ApplicationController
  def index
  end

  def authenticate
	@user = User.find_by email: params[:email], password: params[:password]
	if @user
		flash[:message] = "Welcome #{@user.first_name}"
		session[:user] = @user.id
		redirect_to home_path
	else
		flash[:message] = "Email and password did not match"
		redirect_to login_path
	end
  end

  def logout
  end
end
