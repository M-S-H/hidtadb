class CreateSiezureReports < ActiveRecord::Migration
  def change
    create_table :siezure_reports do |t|
      t.string :taskforce
      t.string :agency
      t.string :casenum
      t.string :cjis
      t.string :initiative
      t.date :siezuredate
      t.time :siezuretime
      t.string :siezuretype
      t.boolean :hheop
      t.string :road
      t.string :mile_marker
      t.string :direction
      t.string :address
      t.string :city
      t.string :country
      t.string :state
      t.string :zip
      t.string :narrative
      t.boolean :analytical
      t.string :concealment_method
      t.boolean :false_compartment
      t.string :compartment_location
      t.string :cargo_state_type
      t.boolean :k9used
      t.string :lab_stash_house
      t.string :poc
      t.string :pocphone

      t.timestamps
    end
  end
end
