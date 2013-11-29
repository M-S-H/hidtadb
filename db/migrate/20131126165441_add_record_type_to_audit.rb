class AddRecordTypeToAudit < ActiveRecord::Migration
	def change
		add_column :audits, :recordtype, :string
	end
end
