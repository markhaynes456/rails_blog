require 'rails_helper'

RSpec.describe Post, :type => :model do
	describe("Creating") do
		
	before(:each) do
			@post
		end

		it("success new post") do
			@post = Post.new(title: "new post", slug: "slimey slimey", text: "i am the real deal a full post")
			@post.save
			expect( Post.find(@post.id) ).to( be_a(Post) ) 
		end


		it("failed error creating post no information") do
			@post = Post.new
			@post.save
			expect( Post.find(@post.id) ).to_not( be_a(Post) )
		end

		after(:each) do
			@post.destroy
		end

	end
end
