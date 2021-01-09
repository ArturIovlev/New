class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :name
      t.integer :unique

      t.timestamps
    end
  end
end
