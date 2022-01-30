class Offer < ApplicationRecord
  belongs_to :organizer, class_name: 'User', foreign_key: "organizer_id", dependent: :destroy

  validates :description, presence: true
  validates :location, presence: true
  validates :fee, presence: true, numericality: true
  validates :date, presence: true
end
