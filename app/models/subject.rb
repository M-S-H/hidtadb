class Subject < ActiveRecord::Base
  searchable do
    text :name, :default_boost => 2
    text :ssn
  end

end
