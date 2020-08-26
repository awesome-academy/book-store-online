class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :user_name
      t.string :customer_name
      t.string :email
      t.string :phone_number
      t.string :address
      t.column :total_price, :integer
      t.column :status, :tinyint

      t.timestamps
    end
  end
end
