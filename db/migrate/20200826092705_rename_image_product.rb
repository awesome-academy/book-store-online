class RenameImageProduct < ActiveRecord::Migration[6.0]
  def change
    rename_table :image_products, :product_images
  end
end
