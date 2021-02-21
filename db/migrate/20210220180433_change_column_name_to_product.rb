class ChangeColumnNameToProduct < ActiveRecord::Migration[5.2]
  def change
  	rename_column :products, :category_id, :collection_id
  end
end
