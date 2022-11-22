class Review < ApplicationRecord
  belongs_to :venue
  belongs_to :user
  has_many_attached :photos
end
