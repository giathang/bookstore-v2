class SessionsController < ApplicationController
  before_action :get_categories
  def new
  end

  def create
    user = User.find_by_email(params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      if params[:user][:remember_me]
        cookies[:auth_token] = {value: user.auth_token, expires: 1.minutes.from_now }
      else
        session[:auth_token] = user.auth_token
      end
      flash[:info] = "Login Success."
      redirect_to root_path
    else
      flash.now[:danger] = "Invalid login or password."
      render 'new'
    end
  end

  def destroy
    if cookies[:auth_token]
      cookies.delete(:auth_token)
    else
      session.delete(:auth_token)
    end
    flash[:info] = "Logout Success."
    redirect_to home_path
  end

  private

  def get_categories
    @categories = Category.all
  end
end
