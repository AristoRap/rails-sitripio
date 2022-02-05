class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :offer

  validates :start_date, presence: true
  validates :end_date, presence: true, date: { after_or_equal_to:  :start_date}
end
