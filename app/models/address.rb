class Address < ActiveRecord::Base
  searchable do
    integer :address_id
    integer :street_number
    text  :street_name
    text  :city
    integer :zip
  end
end
