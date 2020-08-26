class Product < ApplicationRecord
  has_many :product_images, dependent: :destroy
  has_many :order_items, dependent: :nullify
  has_many :orders, through: :order_items
  has_many :product_categories, dependent: :destroy
  has_many :categorys, through: :product_categories
  has_many :product_athors, dependent: :destroy
  has_many :authors, through: :product_athors
end
