class SiezureReport < ActiveRecord::Base
	has_many :siezures
	has_one :location
	has_many :subjects
	has_many :vehicles
	has_many :drugs
	has_many :weapons
end
