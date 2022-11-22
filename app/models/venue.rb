class Venue < ApplicationRecord
  belongs_to :venue_category
  has_many :reviews, dependent: :destroy
  has_many :venue_features
  has_many :accessibility_features, through: :venue_features
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photos
end
