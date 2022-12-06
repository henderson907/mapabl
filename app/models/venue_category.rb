class VenueCategory < ApplicationRecord
  has_many :venues

  def icon_creater(category)
    case category
    when "Restaurant"
      return "fa-solid fa-utensils"
    when "Bakery"
      return "fa-solid fa-cake-candles"
    when "Supermarket"
      return "fa-solid fa-cart-shopping"
    when "Museum"
      return "fa-solid fa-building-columns"
    when "Cinema"
      return "fa-solid fa-film"
    when "Shop"
      return "fa-solid fa-store"
    when "Other"
      return "fa-solid fa-building"
    end
  end
end
