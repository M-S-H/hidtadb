class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :Subjects, :passanger, :passenger
  end  
end
