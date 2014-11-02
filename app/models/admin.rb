class Admin < ActiveRecord::Base

	validates :name, :password, :presence=>true

end
