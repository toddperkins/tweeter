class ApplicationController < ActionController::Base
	
	before_action :authenticate_user!

	def after_sign_out_path_for(resource)
	  #root_path
	  new_user_session_path
	end

end
