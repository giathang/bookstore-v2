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
        cookies[:auth_token] = user.auth_token
      end
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to root_path
  end

  private

  def get_categories
    @categories = Category.all
  end
end
