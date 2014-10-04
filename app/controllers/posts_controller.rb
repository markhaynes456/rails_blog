class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find_by(id:params['id'])
	end	

	def new
		@post = Post.new
	end

	def edit

	end

	def create
		@post = Post.new(post_params)
		@post.save
		redirect_to(action: :index)
	end

	def update

	end

	def destroy

	end

	def post_params
		params.require(:post).permit(:title,:slug,:text)
	end
end
