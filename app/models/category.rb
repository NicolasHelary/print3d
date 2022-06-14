class Category < ApplicationRecord
  has_many :products, through: :products_categories
end
