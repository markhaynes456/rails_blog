class Admin < ActiveRecord::Base

	validates :name, :password, :presence=>true

	def self.auth(name, pass)
		admin = Admin.find_by(name: name, password: pass)
		if admin.is_a?(Admin)
			return admin
		end
		nil
	end 

end
