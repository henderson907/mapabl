class Review < ApplicationRecord
  belongs_to :venue, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
