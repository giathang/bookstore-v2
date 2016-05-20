class Api::V1::CategoriesController < ApplicationController
  before_action :get_category, only: [:show, :update, :destroy]

  # GET api/v1/categories
  def index
    @categories = Category.all
  end

  # GET api/v1/categories/:id
  def show
    unless @category.nil?
      @category
    end
  end

  # POST api/v1/categories
  def create
    @category = Category.create(category_params)
  end

  # PUT api/v1/categories/:id
  def update
    unless @category.nil?
      @category.update(category_params)
    end
  end

  # DELETE api/v1/category/:id
  def destroy
    unless @category.nil?
      @category.destroy
    end
  end

  private

  def get_category
    @category = Category.find_by(id: params[:id])
  end

  def category_params
    params.require(:category).permit(:category_name)
  end

end