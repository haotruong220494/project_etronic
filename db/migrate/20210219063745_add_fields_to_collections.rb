class AddFieldsToCollections < ActiveRecord::Migration[5.2]
  def change
    add_column :collections, :location, :string
    add_column :collections, :image, :string
  end
end
