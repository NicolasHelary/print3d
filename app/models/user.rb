class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :demands_as_client, class_name: "Demand", foreign_key: :client_id, dependent: :destroy
  has_many :offers_as_printer, class_name: "Offer", foreign_key: :printer_id, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :email, presence: true
  validates :printer, presence: true

  validates :email, format: { with: Devise.email_regexp }
end
