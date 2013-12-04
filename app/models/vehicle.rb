class Vehicle < ActiveRecord::Base
  searchable do
    
    text :make
    text :model
    text :year
    text :plate
    text :state
    text :color
    text :owner
    integer :siezure_report_id
    integer :subject_id
    time :created_at
    time :updated_at

  end

  validates :year, numericality: { only_integer: true }
  validates :plate, numericality: {only_integer: true }

end
