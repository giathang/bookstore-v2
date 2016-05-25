class CategoriesController < ApplicationController
  before_action :require_login
  before_action :get_categories
  before_action :require_admin, except: [:index, :show]
  before_action :find_category, only: [:edit, :update, :show, :destroy]


  def index
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    redirect_to books_path
  end

  def edit
  end

  def update
    @category.update(category_params)
    redirect_to @category
  end

  def destroy
    @category.destroy
    redirect_to books_path
  end

  private

  def get_categories
    @categories = Category.all
  end

  def find_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:category_name)
  end
end
