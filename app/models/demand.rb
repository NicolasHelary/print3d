class Demand < ApplicationRecord
  belongs_to :client, class_name: "User"
  belongs_to :product
  has_many :offers

  validates :proposed_price, presence: true
  validates :comment, presence: true
end
