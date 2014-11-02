class AuthController < ApplicationController

	def new
				
	end

	#create session
	def create 
		@admin = Admin.auth(params['name'],params['pass'])
		if @admin.is_a?(Admin)
			create_session(@admin.id)
		end	
		redirect_to admin_index_path
	end
	
	#destroy session
	def destroy
		destroy_session
		redirect_to root_path
	end

end
