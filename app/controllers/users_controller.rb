class UsersController < ApplicationController
  before_action :get_categories
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
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
    params.require(:user).permit(:name, :email, :password, :pass_confirmation)
  end
end
