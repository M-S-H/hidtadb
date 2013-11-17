class CreateRfis < ActiveRecord::Migration
  def change
    create_table :rfis do |t|
      t.string :requestor_name
      t.string :requestor_agency
      t.string :telephone_number
      t.string :fax_number
      t.string :agency_case_number
      t.string :email_address
      t.integer :priority_id
      t.string :type_of_drug
      t.string :subject_name
      t.string :subject_address
      t.string :subject_business_name
      t.string :subject_alias
      t.string :subject_dob
      t.string :alien_registration_number
      t.string :subject_sex
      t.string :subject_race
      t.string :subject_height
      t.string :subject_weight
      t.string :subject_ssn
      t.string :subject_driver_license_number
      t.string :vehicle_id
      t.string :state_of_registration
      t.string :vehicle_vin
      t.string :subject_telephone_numbers
      t.string :known_criminal_activity
      t.string :information_needed

      t.timestamps
    end
  end
end
