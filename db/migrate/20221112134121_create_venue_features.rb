class CreateVenueFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :venue_features do |t|
      t.references :venue, null: false, foreign_key: true
      t.references :accessibility_feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
