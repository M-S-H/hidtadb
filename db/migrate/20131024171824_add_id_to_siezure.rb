class AddIdToSiezure < ActiveRecord::Migration
	def change
		add_column :siezures, :siezure_report_id, :integer
	end
end
