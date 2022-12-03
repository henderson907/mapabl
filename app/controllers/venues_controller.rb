class VenuesController < ApplicationController
  before_action :venue_params, only: [:create]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @accessibility_features = AccessibilityFeature.all
    @venues = []

    @accessibility_features.each do |feature|
      venue_filter(feature.feature) if params["feature#{feature.id}"]
    end

    if params[:query].present?
      sql_query = <<~SQL
        venues.address ILIKE :query
        OR venue_categories.category ILIKE :query
      SQL
      @venues = Venue.joins(:venue_category).where(sql_query, query: "%#{params[:query]}%")
    end

    @venues = Venue.all if @venues.empty?

    @markers = @venues.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        info_window:   render_to_string(partial: "info_window", locals: { venue: venue }),
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

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.save
    redirect_to venue_path(@venue)
  end

  private

  def venue_params
    params.require(:venue).permit(:address, :latitude, :longitude, :name, :venue_category_id, :accessibility_features, :photos)
  end
end
