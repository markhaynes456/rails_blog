require 'rails_helper'

RSpec.describe Admin, :type => :model do
  
	describe("Validation") do
		
		it("Admin does not contain username and password") do
			@admin = Admin.new
			@admin.save
			expect(Admin.find_by(id:@admin.id)).to_not( be_a(Admin))
		end

		it("Admin containts username and password") do
			@admin = Admin.new(name: "mark", password: "password")
			@admin.save
			expect(Admin.find_by(id:@admin.id)).to( be_a(Admin) )
		end

	end

end
