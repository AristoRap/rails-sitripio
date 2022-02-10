class Offer < ApplicationRecord
  belongs_to :organizer, class_name: 'User', foreign_key: "organizer_id", dependent: :destroy
  has_many_attached :photos
  has_many :reviews

  validates :description, presence: true
  validates :location, presence: true
  validates :fee, presence: true, numericality: true
  validates :start_date, presence: true
  validates :end_date, presence: true, date: { after_or_equal_to: :start_date }
  validates :title, presence: true

  def days_duration
    (end_date - start_date).to_i
  end
end
