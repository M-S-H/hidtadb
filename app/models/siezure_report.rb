class SiezureReport < ActiveRecord::Base
	has_many :vehicles
	has_many :subjects
end
