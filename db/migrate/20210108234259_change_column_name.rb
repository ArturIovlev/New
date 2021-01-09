class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :records, :unique, :cached_result_id
  end
end
