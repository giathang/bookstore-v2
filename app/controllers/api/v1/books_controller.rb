class Api::V1:BooksController < ApplicationController
	before_action :find_book, only: [:show, :update, :destroy]
	def index
		@books = Book.all
	end

	def show
		unless @book.nil?
			@book
		end
	end

	def create
		@book = Book.create(book_params)
	end

	def update
		unless @book.nil?
			@book.save(book_params)
		end
	end

	def destroy
		unless @book.nil?
			@book.destroy
		end
	end

	private

	def find_book
		@book = Book.find_by(id: params[:id])
	end

	def book_params
		params.require(:book).permit(:title, :isbn, :des)
	end
end