class Offer < ApplicationRecord
  belongs_to :demand
  belongs_to :printer, class_name: "User"
end
