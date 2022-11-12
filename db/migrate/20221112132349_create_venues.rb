class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :email
      t.string :name
      t.references :venue_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
