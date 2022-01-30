class Offer < ApplicationRecord
  belongs_to :organizer, class_name: 'User'
end
