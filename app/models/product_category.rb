class ProductCategory < ApplicationRecord
  belongs_to :category, foreign_key: true
  belongs_to :product, foreign_key: true
end
