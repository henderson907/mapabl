class ReviewsController < ApplicationController
  before_action :set_venue, only: %i[new create]

  def new
    @venue = Venue.find(params[:venue_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.venue = @venue
    @review.user = current_user
    @review.save
    redirect_to venue_path(@venue)
  end

  private

  def set_venue
    @venue = Venue.find(params[:venue_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :photos)
  end
end
