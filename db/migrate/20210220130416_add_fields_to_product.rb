class AddFieldsToProduct < ActiveRecord::Migration[5.2]
  def change
  	add_column :products, :status, :boolean, default: :true
    add_column :products, :quantity_sold, :integer, default: 0
  end
end
