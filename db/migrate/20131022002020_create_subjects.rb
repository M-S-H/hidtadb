class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.date :dob
      t.string :ssn
      t.string :oln
      t.string :gender
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.boolean :passanger
      t.text :misc
      t.string :citizenship
      t.integer :siezure_report_id

      t.timestamps
    end
  end
end
