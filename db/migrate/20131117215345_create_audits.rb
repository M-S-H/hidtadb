class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.integer :user_id
      t.string :action
      t.time :time
      t.date :date
      t.integer :record_id

      t.timestamps
    end
  end
end
