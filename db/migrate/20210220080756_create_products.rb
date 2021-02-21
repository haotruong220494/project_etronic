class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    	t.string :name
      t.string :slug
      t.string :image
      t.string :description
      t.integer :price
      t.integer :promotional_price
      t.integer :quantity
      t.integer :review_id
      t.integer :photo_id
      t.integer :category_id

      t.timestamps
    end
  end
end
