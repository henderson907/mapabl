class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  include PgSearch::Model
  pg_search_scope :search,
                  against: [:address],
                  using: {
                    tsearch: { prefix: true }
                  }

  def home
  end

  def about
  end
end
