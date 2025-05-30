class AccessibilityFeature < ApplicationRecord
  has_many :venue_features

  def icon_creater(feature)
    case feature
    when "Step Free Access"
      return "fa-solid fa-wheelchair-move"
    when "Visual Fire Alarm"
      return "fa-solid fa-fire"
    when "Verbal Information / Instructions"
      return "fa-solid fa-volume"
    when "Written Information / Instructions"
      return "fa-solid fa-pen"
    when "Flat, Solid Flooring"
      return "fa-solid fa-equals"
    when "Adequate Space For Moving"
      return "fa-solid fa-arrows-left-right"
    when "Adjustable Temperature"
      return "fa-solid fa-temperature-list"
    when "Quiet Room"
      return "fa-solid fa-volume-slash"
    when "Sensory Room"
      return "fa-solid fa-headphones"
    when "Items Within Easy Reach"
      return "fa-solid fa-child-reaching"
    when "Adult Changing Facilities"
      return "fa-solid fa-booth-curtain"
    when "Accessible Toilet"
      return "fa-solid fa-wheelchair"
    when "Accessible Parking"
      return "fa-solid fa-square-parking"
    when "Easy Entrance"
      return "fa-solid fa-door-open"
    when "Dietary Requirement Catering"
      return "fa-solid fa-wheat"
    when "Accessible Smoking Area"
      return "fa-solid fa-smoking"
    when "Braille Information"
      return "fa-solid fa-braille"
    when "Hearing Induction Loop"
      return "fa-solid fa-ear-deaf"
    when "Quiet Atmosphere"
      return "fa-solid fa-volume-low"
    when "No Flashing Lights"
      return "fa-solid fa-bolt"
    when "Automatic Doors"
      return "fa-solid fa-door-open"
    when "Chairs with Back Support"
      return "fa-solid fa-chair"
    when "Biohazard Waste Bin"
      return "fa-solid fa-biohazard"
    when "Large Print Information"
      return "fa-solid fa-magnifying-glass"
    when "Sign Language Interpretation"
      return "fa-solid fa-hands-asl-interpreting"
    end
  end
end
