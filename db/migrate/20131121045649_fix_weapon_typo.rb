class FixWeaponTypo < ActiveRecord::Migration
  def change
  	rename_column :weapons, :seizure_report_id, :siezure_report_id
  end
end
