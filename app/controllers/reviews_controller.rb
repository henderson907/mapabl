class ReviewsController < ApplicationController
  def new
    @venue = Venue.find(params[:venue_id])
    @review = Review.new
  end

  def create
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :photos)
  end
end
