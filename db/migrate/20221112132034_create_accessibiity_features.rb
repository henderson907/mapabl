class CreateAccessibiityFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :accessibiity_features do |t|
      t.string :feature
      t.timestamps
    end
  end
end
