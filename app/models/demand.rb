class Demand < ApplicationRecord
  belongs_to :client, class_name: "User"
  belongs_to :product
  has_many :offers, dependent: :destroy

  validates :proposed_price, presence: true
  validates :comment, presence: true
end
