class Product < ApplicationRecord
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :demands, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
