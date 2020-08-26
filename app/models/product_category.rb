class ProductCategory < ApplicationRecord
  belong_to :product
  belong_to :category
end
