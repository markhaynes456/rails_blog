class Post < ActiveRecord::Base

	validates :title, :slug, :text, presence:true

	validates_confirmation_of :link

end
