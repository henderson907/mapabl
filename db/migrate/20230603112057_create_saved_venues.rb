class CreateSavedVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :saved_venues do |t|
      t.references :user, null: false, foreign_key: true
      t.references :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
