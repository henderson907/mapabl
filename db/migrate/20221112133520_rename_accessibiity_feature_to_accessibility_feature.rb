class RenameAccessibiityFeatureToAccessibilityFeature < ActiveRecord::Migration[7.0]
  def change
    def self.up
      rename_table :accessibiity_features, :accessibility_features
    end

    def self.down
      rename_table :accessibility_features, :accessibiity_features
    end
  end
end
