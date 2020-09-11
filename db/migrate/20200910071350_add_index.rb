class AddIndex < ActiveRecord::Migration[6.0]
  def change
    add_index :product_categories, :category_id
    add_index :product_categories, :product_id
    add_index :products, :publisher_id
    add_index :product_images, :product_id
  end
end
