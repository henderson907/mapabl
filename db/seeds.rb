
require "open-uri"
# Cleaning the database of previous entries
puts "Clearing your database..."
Review.destroy_all
VenueFeature.destroy_all
Venue.destroy_all
User.destroy_all
VenueCategory.destroy_all
AccessibilityFeature.destroy_all

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
file = URI.open("https://s.marketwatch.com/public/resources/MWimages/MW-FM649_lidl_s_ZG_20170517111905.jpg")
new_venue = Venue.new(name: "Lidl", address: "Leipziger Str. 42, 10117 Berlin, Germany")
new_venue.venue_category = VenueCategory.find_by(category: "Supermarket")
new_venue.photos.attach(io: file, filename: "lidl.jpg", content_type: "image/jpg")
new_venue.save
file.close

new_venue = Venue.new(name: "Asia Gondel", address: "Brückenstraße. 1B, 10179 Berlin Germany")
new_venue.venue_category = VenueCategory.find_by(category: "Restaurant")
new_venue.save

new_venue = Venue.new(name: "Schäfer's", address: "Wallstraße 14, 10179 Berlin, Germany")
new_venue.venue_category = VenueCategory.find_by(category: "Bakery")
new_venue.save

file = URI.open("https://1.bp.blogspot.com/-rLDlR08j1Hc/U52wCK0kexI/AAAAAAAAJOM/GIggQda22Ag/s1600/Museums+Pergamon+Berlin+P1010523.JPG")
new_venue = Venue.new(name: "Pergamonmuseum", address: "Bodestraße 1-3, 10178 Berlin, Germany")
new_venue.venue_category = VenueCategory.find_by(category: "Museum")
new_venue.photos.attach(io: file, filename: "pergamon.jpg", content_type: "image/jpg")
new_venue.save
file.close

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

new_venue = Venue.new(name: "Burgermeister Alexanderplatz", address: "Dircksenstraße 113, 10178 Berlin")
new_venue.venue_category = VenueCategory.find_by(category: "Restaurant")
new_venue.save

puts "finished seeding Venue (4/6)..."

# VENUE FEATURES
new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Lidl")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Step-free Access")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Lidl")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Automatic Doors")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Asia Gondel")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Chairs with Back Support")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Schäfer's")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Quiet Atmosphere")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Schäfer's")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "No Flashing Lights")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "CineStar CUBIX")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Step-free Access")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "CineStar CUBIX")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Automatic Doors")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "CineStar CUBIX")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Accessible Bathroom")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Dussman das KulturKaufhaus")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Step-free Access")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Dussman das KulturKaufhaus")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Automatic Doors")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Dussman das KulturKaufhaus")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "No Flashing Lights")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Dussman das KulturKaufhaus")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Quiet Atmosphere")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Mr Imbiss BURGER")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "No Flashing Lights")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Burgermeister Alexanderplatz")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Chairs with Back Support")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Burgermeister Alexanderplatz")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Quiet Atmosphere")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Burgermeister Alexanderplatz")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Step-free Access")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Bäcker Wiedemann")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Chairs with Back Support")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Charlotte 1")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Large Print Information")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Pergamonmuseum")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Step-free Access")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Pergamonmuseum")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Accessible Bathroom")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Pergamonmuseum")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Braille Information")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Pergamonmuseum")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Hearing Induction Loops")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Pergamonmuseum")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Large Print Information")
new_venue_feat.save

new_venue_feat = VenueFeature.new
new_venue_feat.venue = Venue.find_by(name: "Pergamonmuseum")
new_venue_feat.accessibility_feature = AccessibilityFeature.find_by(feature: "Quiet Atmosphere")
new_venue_feat.save

puts "finished seeding VenueFeature (5/6)..."

# REVIEWS
new_review = Review.new(content: "The lights were flickering so much! They need to change the lightbulbs.",
                        rating: 2)
new_review.venue = Venue.find_by(name: "Lidl")
new_review.user = User.all[1]
new_review.save

new_review = Review.new(content: "The staff were really kind and came round the counter so I could see
                                  them in my wheelchair!",
                        rating: 4)
new_review.venue = Venue.find_by(name: "Asia Gondel")
new_review.user = User.all[2]
new_review.save

new_review = Review.new(content: "It's a lot of walking and not many places to sit down",
                        rating: 3)
new_review.venue = Venue.find_by(name: "Pergamonmuseum")
new_review.user = User.all[1]
new_review.save

new_review = Review.new(content: "We had Audio Guides and staff support during the whole visit. I'll definitely come back!",
  rating: 5)
new_review.venue = Venue.find_by(name: "Pergamonmuseum")
new_review.user = User.all[2]
new_review.save


new_review = Review.new(content: "They do special screenings where they turn the volume down! It's great!",
                        rating: 5)
new_review.venue = Venue.find_by(name: "CineStar CUBIX")
new_review.user = User.all[2]
new_review.save

new_review = Review.new(content: "There is a screen showing when your order is ready, so I don't have to tell them
                        that I'm Deaf and can't hear when they call my order number",
                        rating: 4)
new_review.venue = Venue.find_by(name: "Burgermeister Alexanderplatz")
new_review.user = User.all[3]
new_review.save

new_review = Review.new(content: "There is a step to get to the bathroom and the employees refused to get the ramp.",
                        rating: 1)
new_review.venue = Venue.find_by(name: "")
new_review.user = User.all[2]
new_review.save

new_review = Review.new(content: "It was so loud that my son was struggling a lot. The staff tried to put us in a
                                  quieter corner but we could barely hear ourselves.",
                        rating: 3)
new_review.venue = Venue.find_by(name: "Charlotte 1")
new_review.user = User.all[1]
new_review.save

new_review = Review.new(content: "One of the women working there showed me all the books about crocodiles after
                                  I told her they're my special interest. She let me sit and read for ages.",
                        rating: 5)
new_review.venue = Venue.find_by(name: "Dussman das KulturKaufhaus")
new_review.user = User.all[3]
new_review.save

puts "Finished! (6/6)"
