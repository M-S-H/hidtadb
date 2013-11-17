class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.integer :telephone_id
      t.integer :seizure_report_id
      t.string :telephone_number

      t.timestamps
    end
  end
end
