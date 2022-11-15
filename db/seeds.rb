# Cleaning the database of previous entries
puts "Clearing your database..."
AccessibilityFeature.destroy_all
Review.destroy_all
User.destroy_all
VenueCategory.destroy_all
VenueFeature.destroy_all
Venue.destroy_all

# Re-seeding the database
puts "Seeding your database..."

# ACCESSIBILITY FEATURES
puts "Starting AccessibilityFeature..."

AccessibilityFeature.create(feature: "Step-free Access")
AccessibilityFeature.create(feature: "Accessible Bathroom")
AccessibilityFeature.create(feature: "Braille Information")
AccessibilityFeature.create(feature: "Hearing Induction Loops")
AccessibilityFeature.create(feature: "Quiet Atmosphere")
AccessibilityFeature.create(feature: "No Flashing Lights")
AccessibilityFeature.create(feature: "Automatic Doors")
AccessibilityFeature.create(feature: "Chairs with Back Support")
AccessibilityFeature.create(feature: "Online Ordering Available")
AccessibilityFeature.create(feature: "Biohazard Waste Bin in Bathroom")
AccessibilityFeature.create(feature: "Crutch Storage Space")
AccessibilityFeature.create(feature: "Large Print Information")
AccessibilityFeature.create(feature: "Sign Language Interpretation")

puts "Finished seeding AccessibilityFeature (1/6)..."

# VENUE CATEGORIES
puts "Starting VenueCategory..."

VenueCategory.create(category: "Restaurant")
VenueCategory.create(category: "Cafe")
VenueCategory.create(category: "Bakery")
VenueCategory.create(category: "Supermarket")
VenueCategory.create(category: "Museum")
VenueCategory.create(category: "Cinema")
VenueCategory.create(category: "Theatre")
VenueCategory.create(category: "Shop")
VenueCategory.create(category: "Misc - Food")
VenueCategory.create(category: "Misc - Non-Food")

puts "Finished seeding VenueCategory (2/6)..."

# USERS
puts "Starting User..."

# VENUES

# VENUE FEATURES

# REVIEWS

puts "Finished! (6/6)"
