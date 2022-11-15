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
AccessibilityFeature.create(feature: "Step-free Access")
AccessibilityFeature.create(feature: "Accessible Bathroom")
AccessibilityFeature.create(feature: "Braille Information")
AccessibilityFeature.create(feature: "Hearing Induction Loops")
AccessibilityFeature.create(feature: "Quiet Atmosphere")
AccessibilityFeature.create(feature: "No Flashing Lights")
AccessibilityFeature.create(feature: "Automatic Doors")
AccessibilityFeature.create(feature: "Chairs with Back Support")
AccessibilityFeature.create(feature: "Biohazard Waste Bin in Bathroom")
AccessibilityFeature.create(feature: "Large Print Information")
AccessibilityFeature.create(feature: "Sign Language Interpretation")

puts "Finished seeding AccessibilityFeature (1/6)..."

# VENUE CATEGORIES
VenueCategory.create(category: "Restaurant")
VenueCategory.create(category: "Bakery")
VenueCategory.create(category: "Supermarket")
VenueCategory.create(category: "Museum")
VenueCategory.create(category: "Cinema")
VenueCategory.create(category: "Shop")
VenueCategory.create(category: "Other")

puts "Finished seeding VenueCategory (2/6)..."

# USERS
User.create(first_name: "Carson", last_name: "O'Gin",
            email: "testUser1@test.com", password: "123456")

User.create(first_name: "Shirley", last_name: "Knot",
            email: "testUser2@test.com", password: "123456")

User.create(first_name: "Lee", last_name: "Murr",
            email: "testUser3@test.com", password: "123456")

puts "Finished seeding User (3/6)..."

# VENUES
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
VenueFeature.new(venue_id: Venue.find_by(name: "Lidl"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Step-free Access"))

VenueFeature.new(venue_id: Venue.find_by(name: "Lidl"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Automatic Doors"))

VenueFeature.new(venue_id: Venue.find_by(name: "Asia Gondel"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Chairs with Back Support"))

VenueFeature.new(venue_id: Venue.find_by(name: "Schäfer's"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Quiet Atmosphere"))

VenueFeature.new(venue_id: Venue.find_by(name: "Schäfer's"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "No Flashing Lights"))

VenueFeature.new(venue_id: Venue.find_by(name: "CineStar CUBIX"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Step-free Access"))

VenueFeature.new(venue_id: Venue.find_by(name: "CineStar CUBIX"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Automatic Doors"))

VenueFeature.new(venue_id: Venue.find_by(name: "CineStar CUBIX"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Accessible Bathroom"))

VenueFeature.new(venue_id: Venue.find_by(name: "Dussman das KulturKaufhaus"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Step-free Access"))

VenueFeature.new(venue_id: Venue.find_by(name: "Dussman das KulturKaufhaus"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Automatic Doors"))

VenueFeature.new(venue_id: Venue.find_by(name: "Dussman das KulturKaufhaus"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "No Flashing Lights"))

VenueFeature.new(venue_id: Venue.find_by(name: "Dussman das KulturKaufhaus"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Quiet Atmosphere"))

VenueFeature.new(venue_id: Venue.find_by(name: "Pergamonmuseum"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Step-free Access"))

VenueFeature.new(venue_id: Venue.find_by(name: "Pergamonmuseum"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Accessible Bathroom"))

VenueFeature.new(venue_id: Venue.find_by(name: "Pergamonmuseum"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Braille Information"))

VenueFeature.new(venue_id: Venue.find_by(name: "Pergamonmuseum"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Hearing Induction Loops"))

VenueFeature.new(venue_id: Venue.find_by(name: "Pergamonmuseum"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Large Print Information"))

VenueFeature.new(venue_id: Venue.find_by(name: "Pergamonmuseum"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Quiet Atmosphere"))

VenueFeature.new(venue_id: Venue.find_by(name: "Mr Imbiss BURGER"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "No Flashing Lights"))

VenueFeature.new(venue_id: Venue.find_by(name: "Bäcker Wiedemann"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Chairs with Back Support"))

VenueFeature.new(venue_id: Venue.find_by(name: "Charlotte 1"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Large Print Information"))

VenueFeature.new(venue_id: Venue.find_by(name: "Burgermeister Alexanderplatz"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Chairs with Back Support"))

VenueFeature.new(venue_id: Venue.find_by(name: "Burgermeister Alexanderplatz"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Quiet Atmosphere"))

VenueFeature.new(venue_id: Venue.find_by(name: "Burgermeister Alexanderplatz"),
                 accessibility_feature_id: AccessibilityFeature.find_by(feature: "Step-free Access"))

puts "finished seeding VenueFeature (5/6)..."

# REVIEWS

puts "Finished! (6/6)"
