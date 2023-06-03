class AddVenueTypeToVenueCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :venue_categories, :venue_type, :string
  end
end
