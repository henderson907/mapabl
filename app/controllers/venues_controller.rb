class VenuesController < ApplicationController
  def index
    @accessibility_features = AccessibilityFeature.all
    @venues = []

    @accessibility_features.each do |feature|
      venue_filter(feature.feature) if params["feature#{feature.id}"]
    end

    @venues = Venue.all if @venues.empty?

    ## hey
    @markers = @venues.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        info_window: render_to_string(partial: "info_window", locals: { venue: venue }),
        image_url: helpers.asset_url("custom-map-marker.png")
      }
    end
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def venue_filter(feature_name)
    venue_features = VenueFeature.accessibility_feature_search(feature_name)
    venue_features.each do |feature|
      @venues << feature.venue
    end
  end
end
