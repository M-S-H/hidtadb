class AddAssociationToLocation < ActiveRecord::Migration
  def change
  	add_column :locations, :siezure_report_id, :integer
  end
end
