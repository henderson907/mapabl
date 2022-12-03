class Venue < ApplicationRecord
  belongs_to :venue_category
  has_many :reviews, dependent: :destroy
  has_many :venue_features
  has_many :accessibility_features, through: :venue_features
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photos

  include PgSearch::Model
  pg_search_scope :venue_category_search,
                  associated_against: {
                    venue_category: :category
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
