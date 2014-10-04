require 'rails_helper'

describe("Post tests") do

	before(:all) do
    @posts = [Post.new(title: "title1", slug: "slug1", text: "text1"),Post.new(title: "title2", slug: "slug2", text: "text2"),Post.new(title: "title3", slug: "slug1", text: "text3")]
    @posts.each do |post|
       post.save
    end
  end

	describe("index page") do

    it("Should list all posts") do
      visit('/posts/')
      expect(page).to( have_content('title2') ) and expect(page).to( have_content('slug2') ) and expect(page).to( have_content('text3') )
    end

	end

	describe("show") do

		it("should show the post") do
			visit("/posts/#{@posts[0].id}")
			expect(page).to(have_content(@posts[0].title))
		end

	end

	describe("Add a post") do
		
	end

	after(:all) do
    @posts.each do |post|
   		post.destroy
  	end
	end
end
