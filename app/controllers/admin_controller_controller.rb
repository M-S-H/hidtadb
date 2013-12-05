class AdminControllerController < ApplicationController
	before_action :check_admin

	def control_panel
		@audits = Audit.all[0..5];
		@users = User.all
	end

	def change_role
		@user = User.find(params[:id]);
		@user.role = params[:new_role];
		@user.save!

		respond_to do |format|
			format.js
		end
	end

	def new_user

	end

	def check_admin
		if !current_user.admin?
			redirect_to '/'
		end
	end
end
