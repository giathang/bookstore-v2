class Api::V1::CommentsController < ApplicationController
	before_action :find_book

	# POST /api/v1/books/:id/comments
	def create
		unless @book.nil?
			@comment = @book.comments.create(comment_params)
		end
	end

	# DELETE /api/v1/books/:id/comments/:id
	def destroy
		unless @book.nil?
			@comment = @book.comments.find(params[:id])
			@comment.destroy
		end
	end

	private

	def find_book
		@book = Book.find(params[:book_id])
	end

	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
end