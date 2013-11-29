class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :road
      t.string :mile_marker
      t.string :direction
      t.string :address
      t.string :city
      t.string :county
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
