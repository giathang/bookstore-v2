class Api::V1::BooksController < ApplicationController
  before_action :get_book, only: [:show, :update, :destroy]


  # GET api/v1/books
  def index
    @books = Book.all

    respond_to do |format|
      format.json {render :index, status: :ok}
    end
  end

  # GET api/v1/categories/:id/books
  def show
  end

  #POST api/v1/books
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.json {render :create, status: :created}
      else
        format.json {render json: @book.errors, status: :unprocessable_entity}
      end
    end
  end


  #PUT api/v1/books/:id
  def update

    respond_to do |format|
      if @book.update(book_params)
        format.json {render :show, status: :ok}
      else
        format.json {render json: @book.errors, status: :unprocessable_entity}
      end
    end
  end


  #DELETE api/v1/books/:id
  def destroy
    @book.destroy

    respond_to do |format|
      format.json {head :no_content}
    end
  end

  private

  def get_book
    @book = Book.find_by(id: params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :isbn, :des, :category_id)
  end

end