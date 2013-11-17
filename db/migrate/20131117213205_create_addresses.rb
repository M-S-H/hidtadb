class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :address_id
      t.integer :street_number
      t.string :street_name
      t.string :city
      t.integer :zip

      t.timestamps
    end
  end
end
