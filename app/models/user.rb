class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
		 :recoverable, :rememberable, :trackable, :validatable

	has_many :audits

	def admin?
		if self.role == "admin"
			return true;
		else
			return false;
		end
	end

	def field?
		if self.role == "field"
			return true;
		else
			return false;
		end
	end

	def entry?
		if self.role == "entry"
			return true;
		else
			return false;
		end
	end
end
