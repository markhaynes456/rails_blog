require 'rails_helper'

describe("Contact features") do

	it("Header contains one one of the permitted phrases") do
			visit('/contact')
      expect(page).to( have_content('Contact us') )
	end

end
