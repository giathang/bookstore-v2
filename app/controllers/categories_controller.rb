class CategoriesController < ApplicationController
  before_action :find_category, only: [:edit, :update, :show, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
  end

  def edit
  end

  def update
    @category.update(category_params)
  end

  def destroy
    @category.destroy
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:category_name)
  end
end
