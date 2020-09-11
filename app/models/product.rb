class Product < ApplicationRecord
  has_many :product_images, dependent: :destroy
  has_many :order_items, dependent: :nullify
  has_many :orders, through: :order_items
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories
  has_many :product_authors, dependent: :destroy
  has_many :authors, through: :product_authors

  scope :by_name, ->(name_product){where("name LIKE ?", "%#{name_product}%")}
end
