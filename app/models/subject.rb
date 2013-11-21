class Subject < ActiveRecord::Base
  searchable do
    
    text :name, :default_boost => 2
    time :dob
    text :ssn
    text :oln
    text :gender
    text :address
    text :city
    text :state
    text :zip
    boolean :passanger
    text :misc
    text :citizenship
    integer :siezure_report_id
    time :created_at
    time :updated_at
    
  end

end
