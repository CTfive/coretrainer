class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

		def configure_permitted_parameters
			devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, input_roles: []])
			devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username])
		end

		def user_params
			permit.require(:user).permit(:name, :username, :email, {:role_ids: []})
		end
end
