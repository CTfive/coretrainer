class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller?
	helper_method :current_user

	protected

	def after_sign_in_path_for(resource)
		if resource.client?
			"/#{resource.role}s/#{resource.id}"
		else 
			"#{resource.role}s/#{resource.id}"
		end
	end

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :username, :role, :email, :password)}
		devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :username, :password, :email, :role)}
	end
end
