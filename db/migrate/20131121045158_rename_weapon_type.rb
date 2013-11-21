class RenameWeaponType < ActiveRecord::Migration
  def change
  	rename_column :weapons, :type, :weapon_type
  end
end
