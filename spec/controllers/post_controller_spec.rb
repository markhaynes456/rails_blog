require 'rails_helper'

RSpec.describe PostsController, :type => :controller do
	
	describe("index page") do
		
		before(:all) do
			@posts = [Post.new(title: "title1", slug: "slug1", text: "text1"),Post.new(title: "title2", slug: "slug2", text: "text2"),Post.new(title: "title3", slug: "slug1", text: "text3")]
			@posts.each do |post|
				post.save
			end
		end

		it("Should list all posts") do
			visit('/posts/')
			expect(page).to( have_content('title2') ) and expect(page).to( have_content('slug2') ) and expect(page).to( have_content('text3')	)	
		end		

		after(:all) do
			@posts.each do |post|
				post.destroy
			end
		end

	end

end
