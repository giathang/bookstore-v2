class Api::V1::CategoriesController < ApplicationController
  before_action :get_category, only: [:show, :get_books_by_category, :update, :destroy]

  # GET api/v1/categories
  def index
    @categories = Category.all

    respond_to do |format|
      format.json {render :index, status: :ok}
    end
  end

  # GET api/v1/categories/:id
  def show
    respond_to do |format|
      format.json {render :show, status: :ok}
    end
  end

  # GET api/v1/categories/:id/books
  def get_books_by_category
    @books = @category.books
    respond_to do |format|
      format.json {render :get_books_by_category, status: :ok}
    end
  end

  # POST api/v1/categories
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.json {render :create, status: :created}
      else
        format.json {render json: @category.errors, status: :unprocessable_entity}
      end
    end
  end

  # PUT api/v1/categories/:id
  def update

    respond_to do |format|
      if @category.update(category_params)
        format.json {render :show, status: :ok}
      else
        format.json {render json: @category.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE api/v1/category/:id
  def destroy
    @category.destroy

    respond_to do |format|
      format.json {head :no_content}
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