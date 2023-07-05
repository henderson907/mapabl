class AddAvgRatingToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :avg_rating, :float
  end
end
