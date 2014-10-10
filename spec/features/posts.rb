require 'rails_helper'

describe("Post features") do

	before(:all) do
    @posts = [Post.new(title: "title1", slug: "slug1", text: "text1"),Post.new(title: "title2", slug: "slug2", text: "text2"),Post.new(title: "title3", slug: "slug1", text: "text3")]
    @posts.each do |post|
       post.save
    end
  end

	it("Index displays a list of posts") do
      visit('/posts/')
      expect(page).to( have_content('title2') ) and expect(page).to( have_content('slug2') ) and expect(page).to( have_content('text3') )
	end

	it("Show a single Post") do
		visit("/posts/#{@posts[0].id}")
		expect(page).to(have_content(@posts[0].title))
	end

	it("create a post") do
		visit("/posts/new")
		fill_in('Title', :with => 'title1234')
		fill_in('Slug', :with => 'I am a slug')
		fill_in('Text', :with => 'text')
		click_button('Create Post')
		expect(page).to(have_content("I am a slug"))
	end	
	
	it("an admin can remove a post") do
		pending
	end

	it("a user cannot view a post") do

	end


	after(:all) do
    @posts.each do |post|
   		post.destroy
  	end
	end
end
