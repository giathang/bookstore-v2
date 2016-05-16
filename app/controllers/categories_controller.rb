class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    redirect_to new_book_path
  end
  private

  def category_params
    params.require(:category).permit(:category_name)
  end
end
