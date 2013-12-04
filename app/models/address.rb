class Address < ActiveRecord::Base
  searchable do
    integer :address_id
    integer :street_number
    text  :street_name
    text  :city
    integer :zip
  end

  validates :street_name, presence: true
  validates :city, presence: true
  validates :address_id, presence: true, numericality: { greater_than: 0 }
  validates :street_name, presence: true, numericality: { greater_than: 0 }
  validates :zip, presence: true, numericality: { greater_than: 0 }

end
