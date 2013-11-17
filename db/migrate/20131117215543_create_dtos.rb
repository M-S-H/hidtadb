class CreateDtos < ActiveRecord::Migration
  def change
    create_table :dtos do |t|
      t.integer :dto_id
      t.string :dto_name

      t.timestamps
    end
  end
end
