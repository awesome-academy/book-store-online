class AddIndexToProductImagesProductId < ActiveRecord::Migration[6.0]
  def change
    add_index :product_images, product_id
  end
end
