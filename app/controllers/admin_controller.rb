class AdminController < ApplicationController

	before_action :logged_in?

	def index
		@posts = Post.all
	end

end
