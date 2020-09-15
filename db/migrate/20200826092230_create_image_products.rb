class CreateImageProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :image_products do |t|
      t.integer :product_id
      t.string :link
      t.timestamps
    end
  end
end
