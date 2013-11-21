class SiezureReport < ActiveRecord::Base
	has_many :siezures
	
	 searchable do
    text :name, :default_boost => 2
    text :ssn
  end
end
