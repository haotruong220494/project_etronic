class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :body
      t.integer :review_id
      t.integer :product_id, null: false
      t.integer :account_id, null: false

      t.timestamps
    end
  end
end
