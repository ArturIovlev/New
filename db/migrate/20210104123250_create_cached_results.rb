class CreateCachedResults < ActiveRecord::Migration[6.0]
  def change
    create_table :cached_results do |t|
      t.string :name
      t.string :profession
      t.string :day
      t.string :time
      t.integer :cabinet

      t.timestamps
    end
  end
end
