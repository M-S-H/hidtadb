class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|

      t.timestamps
    end
  end
end
