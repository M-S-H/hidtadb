class Subject < ActiveRecord::Base
	has_many :vehicles
	belongs_to :siezure_report
end
