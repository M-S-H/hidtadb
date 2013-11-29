class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	before_filter :authenticate_user!

	def create_audit action, type, id
		a = action
		t = type
		i = id

		if a == :show
			a = 'view'
		end

		current_user.audits.create :action => a, :recordtype => t, :record_id => i
	end
end