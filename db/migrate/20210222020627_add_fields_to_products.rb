class AddFieldsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :sale_off, :boolean, default: :false
    add_column :products, :especially, :boolean, default: :false
  end
end
