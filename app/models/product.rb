class Product < ApplicationRecord
  has_many :categories, through: :products_categories
end
