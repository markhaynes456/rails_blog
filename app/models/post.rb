class Post < ActiveRecord::Base

	validates :title, :slug, :text, presence:true

end
