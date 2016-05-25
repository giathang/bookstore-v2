class SessionsController < ApplicationController
  before_action :get_categories
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      if params[:session][:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        session[:auth_token] = user.auth_token
      end
      redirect_to root_path, notice: 'Login success .'
    else
      render 'new'
    end
  end

  def destroy
    if cookies[:auth_token]
      cookies.delete(:auth_token)
    else
      sessions.delete(:auth_token)
    end
    redirect_to root_path, notice: 'Logout success .'
  end

  private

  def get_categories
    @categories = Category.all
  end
end
