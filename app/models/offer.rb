class Offer < ApplicationRecord
  belongs_to :organizer, class_name: 'User'
  validates :description, presence: true
  validates :location, presence: true
  validates :fee, presence: true, numericality: true
  validates :date, presence: true
end
