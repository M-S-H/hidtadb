class SiezureReport < ActiveRecord::Base
	has_many :siezures
<<<<<<< HEAD
	has_one :location
	has_many :subjects
	has_many :vehicles
	has_many :drugs
	has_many :weapons
=======
	
	 searchable do
    text :taskforce
    text :agency
    text :casenum
    text :cjis
    text :initiative
    time :siezuredate
    time :siezuretime
    text :siezuretype
    boolean :hheop
    text :country
    text :narrative
    boolean :analytical
    text :concealment_method
    boolean :false_compartment
    text :compartment_location
    text :cargo_state_type
    boolean :k9used
    text :lab_stash_house
    text :poc
    text :pocphone
    time :created_at
    time :updated_at

  end
>>>>>>> bf452825e798d51650be4643fcbb540c42728466
end
