class ChangeSiezureNarrative < ActiveRecord::Migration
	def change
		change_column :siezure_reports, :narrative, :text, :limit => nil
	end
end
