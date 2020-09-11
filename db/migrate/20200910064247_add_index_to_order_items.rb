class AddIndexToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_index :order_items, :order_id
    add_index :order_items, :product_id
  end
end
