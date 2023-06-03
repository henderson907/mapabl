class AddAccessRatingToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :access_rating, :integer
  end
end
