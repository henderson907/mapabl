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
VenueCategory.create(category: "Bakery")
VenueCategory.create(category: "Supermarket")
VenueCategory.create(category: "Museum")
VenueCategory.create(category: "Cinema")
VenueCategory.create(category: "Shop")
VenueCategory.create(category: "Other")

puts "Finished seeding VenueCategory (2/6)..."

# USERS

# VENUES
puts "Starting Venue..."

new_venue = Venue.new(name: "Lidl", address: "Leipziger Str. 42, 10117 Berlin, Germany")
new_venue.venue_category = VenueCategory.find_by(category: "Supermarket")
new_venue.save

new_venue = Venue.new(name: "Asia Gondel", address: "Brückenstraße. 1B, 10179 Berlin Germany")
new_venue.venue_category = VenueCategory.find_by(category: "Restaurant")
new_venue.save

new_venue = Venue.new(name: "Schäfer's", address: "Wallstraße 14, 10179 Berlin, Germany")
new_venue.venue_category = VenueCategory.find_by(category: "Bakery")
new_venue.save

new_venue = Venue.new(name: "Pergamonmuseum", address: "Bodestraße 1-3, 10178 Berlin, Germany")
new_venue.venue_category = VenueCategory.find_by(category: "Museum")
new_venue.save

new_venue = Venue.new(name: "CineStar CUBIX", address: "Rathausstraße 1, 10178 Berlin, Germany")
new_venue.venue_category = VenueCategory.find_by(category: "Cinema")
new_venue.save

new_venue = Venue.new(name: "Dussman das KulturKaufhaus", address: "Friedrichstraße 90, 10117 Berlin, Germany")
new_venue.venue_category = VenueCategory.find_by(category: "Shop")
new_venue.save

new_venue = Venue.new(name: "Mr Imbiss BURGER", address: "Schützenstraße 2, 10117 Berlin, Germany")
new_venue.venue_category = VenueCategory.find_by(category: "Other")
new_venue.save

new_venue = Venue.new(name: "Bäcker Wiedemann", address: "Karl-Liebknecht-STr. 5, 10178 Berlin, Germany")
new_venue.venue_category = VenueCategory.find_by(category: "Bakery")
new_venue.save

new_venue = Venue.new(name: "Charlotte 1", address: "Charlottenstraße 1, 10969 Berlin, Germany")
new_venue.venue_category = VenueCategory.find_by(category: "Restaurant")
new_venue.save

new_venue = Venue.new(name: "Burgermeister Alexanderplatz", address: "Dirckenstraße 113, 10178 Berlin, Germany")
new_venue.venue_category = VenueCategory.find_by(category: "Restaurant")
new_venue.save

puts "finished seeding Venue (4/6)..."

# VENUE FEATURES

# REVIEWS

puts "Finished! (6/6)"
