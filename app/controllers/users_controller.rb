class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  before_action :get_categories


  def index
    @users = User.all
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      cookies[:auth_token] = @user.auth_token
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def get_categories
    @categories = Category.all
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
