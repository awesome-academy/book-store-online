class Author < ApplicationRecord
  has_many :product_authors, dependent: :destroy
  has_many :products, through: :product_authors
end
