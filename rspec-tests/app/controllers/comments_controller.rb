class CommentsController < ApplicationController
	def index
	end

	def create
	end

	def destroy
	end

	def edit
	end

	def show
		@comment = Comment.all
	end
end
