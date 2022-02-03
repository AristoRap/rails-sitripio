class Booking < ApplicationRecord
  has_one :user, dependent: :destroy
  has_one :offer

  validates :start_date, presence: true
  validates :end_date, presence: true, date: { after_or_equal_to:  :start_date}
end
