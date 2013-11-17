class RemoveLocationFromSeizureReport < ActiveRecord::Migration
	def change
		remove_column :siezure_reports, :road
		remove_column :siezure_reports, :mile_marker
		remove_column :siezure_reports, :direction
		remove_column :siezure_reports, :address
		remove_column :siezure_reports, :city
		remove_column :siezure_reports, :county
		remove_column :siezure_reports, :state
		remove_column :siezure_reports, :zip
	end
end
