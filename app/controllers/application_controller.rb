class ApplicationController < ActionController::Base
	
	before_action :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_out_path_for(resource)
	  new_user_session_path
	end

	# override permitted params for devise
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :first_name, :last_name, :handle) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :first_name, :last_name, :handle) }
  end

end
