class Demand < ApplicationRecord
  belongs_to :client, class_name: "User"
  belongs_to :product
end
