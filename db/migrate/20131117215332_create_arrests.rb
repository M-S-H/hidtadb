class CreateArrests < ActiveRecord::Migration
  def change
    create_table :arrests do |t|
      t.integer :arrest_id
      t.integer :subject_id
      t.integer :location_id
      t.date :date
      t.string :cause

      t.timestamps
    end
  end
end
