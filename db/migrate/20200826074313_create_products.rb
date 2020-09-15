class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :short_desc
      t.string :main_image
      t.column :amount, :integer
      t.column :price, :int
      t.column :published_date, :datetime
      t.column :hot, :integer
      t.column :publisher_id, :integer
      t.timestamps
    end
  end
end
