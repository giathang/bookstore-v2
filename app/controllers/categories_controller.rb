class CategoriesController < ApplicationController
  before_action :find_category, only: [:edit, :update, :show, :destroy]
  before_action :set_category

  def index
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    redirect_to categories_path
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

  def set_category
    @categories = Category.all
  end

  def find_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:category_name)
  end
end
