class VenueFeature < ApplicationRecord
  belongs_to :venue
  belongs_to :accessibility_feature

  include PgSearch::Model
  pg_search_scope :accessibility_feature_search,
                  associated_against: {
                    accessibility_feature: :feature
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
