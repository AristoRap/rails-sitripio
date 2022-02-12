class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :offer, uniqueness: { scope: :user }
end
