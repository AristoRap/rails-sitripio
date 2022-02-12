class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :offers, through: :bookings
  has_many :reviews
  has_one_attached :photo

  def my_offers
    Offer.where(organizer_id: id)
  end
end
