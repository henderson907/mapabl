class Venue < ApplicationRecord
  belongs_to :venue_category
  has_many :reviews
  has_many :venue_features
  has_many :accessibility_features, through: :venue_features
end
