class RemoveEmailFromVenue < ActiveRecord::Migration[7.0]
  def change
    remove_column :venues, :email, :string
  end
end
