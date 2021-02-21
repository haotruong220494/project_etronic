class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
    	t.string :title
      t.string :slug
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
