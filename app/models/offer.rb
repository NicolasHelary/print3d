class Offer < ApplicationRecord
  belongs_to :demand
  belongs_to :printer, class_name: "User"

  validates :price, presence: true, null: false
  validates :status, presence: true, null: false, default: 1
end
