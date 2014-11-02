class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	def create_session(id)
		session['admin_id'] = id
	end

	def destroy_session
		session['admin_id'] = nil
	end

	def logged_in?
		if session['admin_id'] == nil
			redirect_to new_auth_path
		end
	end

end
