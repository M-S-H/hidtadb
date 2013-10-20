class CreateSubjects < ActiveRecord::Migration
	def change
		create_table :subjects do |t|
			t.string	:name
			t.date		:dob
			t.string	:ssn
			t.string	:oln
			t.boolean	:gender
			t.string	:address
			t.string	:city
			t.string	:state
			t.string	:zip
			t.boolean	:passanger
			t.string	:misc
			t.string	:citizenship
			t.timestamps
		end
	end
end
