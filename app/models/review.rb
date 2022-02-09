class Review < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  validates :rating, presence: true
end
