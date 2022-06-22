class Offer < ApplicationRecord
  belongs_to :demand
  belongs_to :printer, class_name: "User"

  validates :price, presence: true
  validates :status, presence: true

  def rating_printer
    @offer = Offer.find(params[:id])
    @ratingp = @offer.printer_score
  end
end
