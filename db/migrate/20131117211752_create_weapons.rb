class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.integer :seizure_report_id
      t.string :type
      t.string :caliber
      t.string :sn

      t.timestamps
    end
  end
end
