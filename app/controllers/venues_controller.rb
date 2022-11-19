class VenuesController < ApplicationController
  def index
    @venues = Venue.all

    @markers = @venues.geocoded.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude
      }
    end
  end
end
