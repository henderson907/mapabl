require "open-uri"

# Cleaning the database of previous entries
puts "Clearing your database..."
SavedVenue.destroy_all
Review.destroy_all
VenueFeature.destroy_all
Venue.destroy_all
User.destroy_all
VenueCategory.destroy_all
AccessibilityFeature.destroy_all

# Re-seeding the database
puts "Seeding your database..."

# ACCESSIBILITY FEATURES
AccessibilityFeature.create(category: "Visual Impairment", feature: "Large Print Information")
AccessibilityFeature.create(category: "Visual Impairment", feature: "Braille Information")
AccessibilityFeature.create(category: "Visual Impairment", feature: "Visual Fire Alarm")
AccessibilityFeature.create(category: "Visual Impairment", feature: "Verbal Information / Instructions")
AccessibilityFeature.create(category: "Audio Impairment", feature: "Hearing Induction Loop")
AccessibilityFeature.create(category: "Audio Impairment", feature: "Sign Language Interpretation")
AccessibilityFeature.create(category: "Audio Impairment", feature: "Written Information / Instructions")
AccessibilityFeature.create(category: "Mobility Impairment", feature: "Step Free Access")
AccessibilityFeature.create(category: "Mobility Impairment", feature: "Flat, Solid Flooring")
AccessibilityFeature.create(category: "Mobility Impairment", feature: "Adequate Space For Moving")
AccessibilityFeature.create(category: "Sensory Impairment", feature: "No Flashing Lights")
AccessibilityFeature.create(category: "Sensory Impairment", feature: "Quiet Atmosphere")
AccessibilityFeature.create(category: "Sensory Impairment", feature: "Adjustable Temperature")
AccessibilityFeature.create(category: "Sensory Impairment", feature: "Quiet Room")
AccessibilityFeature.create(category: "Sensory Impairment", feature: "Sensory Room")
AccessibilityFeature.create(category: "Physical Impairment", feature: "Chairs with Back Support")
AccessibilityFeature.create(category: "Physical Impairment", feature: "Automatic Doors")
AccessibilityFeature.create(category: "Physical Impairment", feature: "Items Within Easy Reach")
AccessibilityFeature.create(category: "Hygiene Requirements", feature: "Biohazard Waste Bin")
AccessibilityFeature.create(category: "Hygiene Requirements", feature: "Adult Changing Facilities")
AccessibilityFeature.create(category: "Hygiene Requirements", feature: "Accessible Toilet")
AccessibilityFeature.create(category: "Miscellaneous", feature: "Accessible Parking")
AccessibilityFeature.create(category: "Miscellaneous", feature: "Easy Entrance")
AccessibilityFeature.create(category: "Miscellaneous", feature: "Dietary Requirement Catering")
AccessibilityFeature.create(category: "Miscellaneous", feature: "Accessible Smoking Area")

puts "Finished seeding AccessibilityFeature (1/3)..."

# VENUE CATEGORIES
VenueCategory.create(category: "Food and Drink", venue_type: "Restaurant")
VenueCategory.create(category: "Food and Drink", venue_type: "Bar")
VenueCategory.create(category: "Food and Drink", venue_type: "Coffee Shop")
VenueCategory.create(category: "Food and Drink", venue_type: "Pub")
VenueCategory.create(category: "Food and Drink", venue_type: "Takeaway")
VenueCategory.create(category: "Food and Drink", venue_type: "Bakery")
VenueCategory.create(category: "Food and Drink", venue_type: "Cafe")
VenueCategory.create(category: "Entertainment", venue_type: "Museum")
VenueCategory.create(category: "Entertainment", venue_type: "Cinema")
VenueCategory.create(category: "Entertainment", venue_type: "Night Club")
VenueCategory.create(category: "Entertainment", venue_type: "Theme Park")
VenueCategory.create(category: "Entertainment", venue_type: "Swimming Pool")
VenueCategory.create(category: "Entertainment", venue_type: "Attraction")
VenueCategory.create(category: "Entertainment", venue_type: "Stadium")
VenueCategory.create(category: "Amenities", venue_type: "Gym")
VenueCategory.create(category: "Amenities", venue_type: "Launderette")
VenueCategory.create(category: "Amenities", venue_type: "Hotel / Hostel")
VenueCategory.create(category: "Amenities", venue_type: "Medical Centre")
VenueCategory.create(category: "Amenities", venue_type: "Police Station")
VenueCategory.create(category: "Amenities", venue_type: "Fire Station")
VenueCategory.create(category: "Amenities", venue_type: "Parking")
VenueCategory.create(category: "Outdoors", venue_type: "Park")
VenueCategory.create(category: "Outdoors", venue_type: "Beach")
VenueCategory.create(category: "Outdoors", venue_type: "Allotment")
VenueCategory.create(category: "Shopping", venue_type: "Supermarket")
VenueCategory.create(category: "Shopping", venue_type: "Beauty & Hygiene Shop")
VenueCategory.create(category: "Shopping", venue_type: "Convenience Shop")
VenueCategory.create(category: "Shopping", venue_type: "Post Office")
VenueCategory.create(category: "Shopping", venue_type: "Shoe Shop")
VenueCategory.create(category: "Shopping", venue_type: "Electronics Shop")
VenueCategory.create(category: "Shopping", venue_type: "Mobility Shop")
VenueCategory.create(category: "Shopping", venue_type: "Clothing Shop")
VenueCategory.create(category: "Shopping", venue_type: "Specialist Food Shop")
VenueCategory.create(category: "Shopping", venue_type: "Pharmacy")
VenueCategory.create(category: "Shopping", venue_type: "Sports Shop")
VenueCategory.create(category: "Shopping", venue_type: "Salon")
VenueCategory.create(category: "Shopping", venue_type: "Hair Dresser")
VenueCategory.create(category: "Shopping", venue_type: "Garden Centre")
VenueCategory.create(category: "Other", venue_type: "Other")

puts "Finished seeding VenueCategory (2/3)..."

# USERS
User.create(first_name: "Freddy", last_name: "Henderson",
            email: "freddy.enabl@gmail.com", password: "Enab1")

puts "Finished seeding User (3/3)..."

puts "Finished! (3/3)"
