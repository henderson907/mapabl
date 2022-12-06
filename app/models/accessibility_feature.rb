class AccessibilityFeature < ApplicationRecord
  has_many :venue_features

  def icon_creater(feature)
    case feature
    when "Step-free Access"
      return "fa-brands fa-accessible-icon"
    when "Accessible Bathroom"
      return "fa-solid fa-restroom"
    when "Braille Information"
      return "fa-solid fa-braille"
    when "Hearing Induction Loops"
      return "fa-solid fa-ear-deaf"
    when "Quiet Atmosphere"
      return "fa-solid fa-volume-low"
    when "No Flashing Lights"
      return "fa-solid fa-bolt"
    when "Automatic Doors"
      return "fa-solid fa-door-open"
    when "Chairs with Back Support"
      return "fa-solid fa-chair"
    when "Biohazard Waste Bin in Bathroom"
      return "fa-solid fa-biohazard"
    when "Large Print Information"
      return "fa-solid fa-magnifying-glass"
    when "Sign Language Interpretation"
      return "fa-solid fa-hands-asl-interpreting"
    end
  end
end
