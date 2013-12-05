class AdminControllerController < ApplicationController
	before_action :check_admin

	def control_panel
	end

	def new_user

	end

	def check_admin
		if !current_user.admin?
			redirect_to '/'
		end
	end
end
