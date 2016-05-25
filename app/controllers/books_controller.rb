class BooksController < ApplicationController
  before_action :require_login
  before_action :get_categories
  before_action :require_admin, except: [:index, :show]
  before_action :get_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  def index
    @books = Book.order('title ASC').search(params[:search]).paginate(page: params[:page], per_page: 10)
  end

  # GET /books/1
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: 'Book was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /books/1
  def update
    if @book.update(book_params)
      redirect_to @book, notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /books/1
  def destroy
    @book.destroy
    redirect_to books_url, notice: 'Book was successfully destroyed.'
  end

  private

    def get_categories
      @categories = Category.all
    end

    # Use callbacks to share common setup or constraints between actions.
    def get_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :isbn, :des, :category_id)
    end

end
