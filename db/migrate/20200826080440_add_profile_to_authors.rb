class AddProfileToAuthors < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :profile, :string
    add_column :authors, :brith_day, :date
  end
end
