class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :type_of_drug
      t.string :amount
      t.string :purchase_price
      t.string :currency

      t.timestamps
    end
  end
end
