require 'rails_helper'

describe("Admin features") do

	it("Header contains one one of the permitted phrases") do
			visit('/admin/')
      expect(page).to( have_content('Title') && have_content('Slug') && have_content("Post") && have_content("Linked") && have_content("Link") )
	end

end
