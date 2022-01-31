class Booking < ApplicationRecord
  has_many :users
  has_one :offer

  validates :start_date, presence: true
  validates :end_date, presence: true, date: { after_or_equal_to:  :start_date}
  validates :accepted, presence: true
end
