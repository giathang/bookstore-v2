class Api::V1::AuthorsController < ApplicationController
	before_action :find_author, only: [:show, :update, :destroy]

	# GET api/v1/authors
	def index
		@authors = Author.all
	end

	# GET api/v1/authors/:id
	def show
		unless @author.nil?
			@author
		end
	end

	# POST api/v1/authors
	def create
		@author = Author.create(author_params)
	end

	# PUT api/v1/authors/:id
	def update
		unless @author.nil?
			@author.update(author_params)
		end
	end

	# DELETE api/v1/authors/:id
	def destroy
		unless @author.nil?
			@author.destroy
		end
	end

	private

	def find_author
		@author = Author.find_by(id: params[:id])
	end

	def author_params
		params.require(:author).permit(:name)
	end
end