class Api::V1::BooksController < ApplicationController
  before_action :get_book, only: [:update, :destroy]


  # GET api/v1/books
  def index
    @books = Book.all
  end

  # GET api/v1/categories/:id/books
  def show
    @category = Category.find_by(id: params[:category_id])
  end

  #POST api/v1/books
  def create
    @book = Book.create(book_params)
  end

  #PUT api/v1/books/:id
  def update
    unless @book.nil?
      @book.update(book_params)
    end
  end

  #DELETE api/v1/books/:id
  def destroy
    unless @book.nil?
      @book.destroy
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