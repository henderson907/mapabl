class AddCategoryToAccessibilityFeatures < ActiveRecord::Migration[7.0]
  def change
    add_column :accessibility_features, :category, :string
  end
end
