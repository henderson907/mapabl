class AddGeneralRatingToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :general_rating, :integer
  end
end
