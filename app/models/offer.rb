class Offer < ApplicationRecord
  belongs_to :organizer, class_name: 'User', foreign_key: "organizer_id", dependent: :destroy
  has_many_attached :photos
  geocoded_by :location

  # => double-check, only option available that makes sense is latitude. Should be location in my opinion
  after_validation :geocode, if: :will_save_change_to_location?
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

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
                  against: %i[title description],
                  using: {
                    tsearch: { prefix: true }
                  }
end
