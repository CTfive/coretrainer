class User::RolesController < ApplicationController
	def new
		@role = Role.new
	end
	
	def create
		@role = Role.create(role_params)
		if user.has_role? "trainer"
			@role
		else 
			@role = "client"
		end
	end

	

	private

	def role_params
		params.require(:role).permit(:name)
	end

end