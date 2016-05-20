class Api::V1::BooksController < ApplicationController
  before_action :get_book, only: [:show, :update, :destroy]


  # GET api/v1/books
  def index
    @books = Book.all
  end

  # GET api/v1/books/:id
  def show
  end

  #POST api/v1/books
  def create
    @book = Book.create(book_params)
  end

  #PUT api/v1/books/:id
  def update
    @book.update(book_params)
  end

  #DELETE api/v1/books/:id
  def destroy
    @book.destroy
  end

  private

  def get_book
    @book = Book.find_by(id: params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :isbn, :des, :category_id)
  end

end