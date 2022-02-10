class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :offer

  validates :offer, uniqueness: { scope: :user }
end
