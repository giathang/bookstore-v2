class SessionsController < ApplicationController
  before_action :get_categories

  def new
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end

  private

  def get_categories
    @categories = Category.all
  end
end
