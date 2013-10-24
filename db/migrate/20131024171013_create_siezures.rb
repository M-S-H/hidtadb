class CreateSiezures < ActiveRecord::Migration
  def change
    create_table :siezures do |t|
      t.string :drug_type
      t.float :amount
      t.float :price
      t.string :currency

      t.timestamps
    end
  end
end
