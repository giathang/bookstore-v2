class UsersController < ApplicationController
  before_action :get_categories
  before_action :require_admin, except: [:new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def get_categories
    @categories = Category.all
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
