class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :demands_as_client, class_name: "Demand", foreign_key: :client_id, dependent: :destroy
  has_many :offers_as_printer, class_name: "Offer", foreign_key: :printer_id, dependent: :destroy
  has_one_attached :pp

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :email, presence: true

  validates :email, format: { with: Devise.email_regexp }

  def rating_as_client
    offers_ids = self.demands_as_client.map(&:offers).flatten.map(&:id)
    offers = Offer.where(id: offers_ids).where.not(client_score: nil)
    ratings = offers.map(&:client_score)
    return 0 if ratings.empty?

    ratings.inject { |sum, el| sum + el } / ratings.length
  end

  def rating_as_printer
    offers = self.offers_as_printer.where.not(printer_score: nil)
    ratings = offers.map(&:printer_score)
    ratings.inject { |sum, el| sum + el }.to_f / ratings.length
  end

end
