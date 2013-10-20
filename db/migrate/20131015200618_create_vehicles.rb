class CreateVehicles < ActiveRecord::Migration
	def change
		create_table :vehicles do |t|
			t.string	:make
			t.string	:model
			t.string	:year
			t.string	:plate
			t.string	:state
			t.string	:color
			t.string	:owner
			t.timestamps
		end
	end
end
