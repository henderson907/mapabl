class VenuesController < ApplicationController
  def index
    @accessibility_features = AccessibilityFeature.all
    @venue_categories = VenueCategory.all
    @venues = Venue.all.to_a

    filter_options

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

  def set_markers

  end

  def filter_options
    # loops through accessibility features and if the filter is selected, sends said
    # feature to the venue_filter method
    @accessibility_features.each do |feature|
      venue_filter(feature.feature) if params["feature#{feature.id}"]
    end

    # loops through the venue categories and if the category is passed via params, sends said
    # category to venue_category_filter method
    @venue_categories.each do |category|
      venue_category_filter(category.category) if params["category#{category.id}"]
    end

    # checks whether @venue is empty and otherwise sets it to Venue.all
    # sets a popup to appear saying the selected criteria doesn't have any matches.
    @venues = Venue.all.to_a if @venues.empty?
  end

  # Uses PgSearch to find the venues fulfilling the accessibility criteria
  # and removes from @venues any venue which is not included in the list
  def venue_filter(feature_name)
    venue_features = VenueFeature.accessibility_feature_search(feature_name)
    venue_features = venue_features.to_a
    venues_with_access_features = []
    venue_features.each do |feature|
      venues_with_access_features << feature.venue
    end
    @venues.delete_if do |venue|
      !venues_with_access_features.include?(venue)
    end
  end

  # Uses PgSearch to find the venue categories matching the venue type criteria
  # and removes from @venues any venue which is not included in this list
  def venue_category_filter(category)
    venue_categories = Venue.venue_category_search(category)
    venue_categories = venue_categories.to_a
    @venues.delete_if do |venue|
      !venue_categories.include?(venue)
    end
  end
end
