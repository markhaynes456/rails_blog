require 'rails_helper'

describe("Post features") do

	before(:all) do
    @posts = [Post.new(title: "title1", slug: "slug1", text: "text1", linked:false),Post.new(title: "title2", slug: "slug2", text: "text2",linked:false),Post.new(title: "title3", slug: "slug1", text: "text3",linked:true,link:"http://www.google.com")]
    @posts.each do |post|
       post.save
    end
  end

	it("Index displays a list of posts") do
      visit('/posts')
      expect(page).to( have_content('title3') ) and expect(page).to( have_content('slug2') ) and expect(page).to( have_content('slug1') )
	end

	it("View a single Post") do
		visit("/posts/#{@posts[0].id}")
		expect(page).to(have_content(@posts[0].title))
	end

	it("Linked posts should link to a different website") do
		visit('/posts/')
		passed = true
		@posts.each do |post|
			if post.linked != true && passed == true
				unless find_link("View '#{post.title}'")[:target].should == "/posts/#{post.id}"
					passed = false
				end
			else
				
			end
		end
		passed
	end

	it("create a post") do
		visit("/posts/new")
		fill_in('Title', :with => 'Google')
		fill_in('Slug', :with => 'We made google')
		fill_in('Text', :with => 'I am lieing thought yould get more customers hehe')
		fill_in('linked', :with => true)
		fill_in('link', :with => 'http://www.google.com')
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
