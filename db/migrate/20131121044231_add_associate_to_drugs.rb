class AddAssociateToDrugs < ActiveRecord::Migration
  def change
  	add_column :drugs, :siezure_report_id, :integer
  end
end
