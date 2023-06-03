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
AccessibilityFeature.create(category: "Physical Impairment", feature: "Items within Easy Reach")
AccessibilityFeature.create(category: "Hygiene Requirements", feature: "Biohazard Waste Bin")
AccessibilityFeature.create(category: "Hygiene Requirements", feature: "Adult Changing Facilities")
AccessibilityFeature.create(category: "Hygiene Requirements", feature: "Accessible Toilet")
AccessibilityFeature.create(category: "Miscellaneous", feature: "Accessible Parking")
AccessibilityFeature.create(category: "Miscellaneous", feature: "Easy Entrance")
AccessibilityFeature.create(category: "Miscellaneous", feature: "Dietary Requirement Catering")
AccessibilityFeature.create(category: "Miscellaneous", feature: "Accessible Smoking Area")


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
new_venue = Venue.new(name: "Lidl", address: "Leipziger Str. 42, 10117, Berlin")
new_venue.venue_category = VenueCategory.find_by(category: "Supermarket")
new_venue.photos.attach(io: file, filename: "lidl.jpg", content_type: "image/jpg")
new_venue.save
file.close

file = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/0c/c0/5b/21/open-kitchen-to-watch.jpg")
new_venue = Venue.new(name: "Asia Gondel", address: "Brückenstraße. 1B, 10179, Berlin")
new_venue.venue_category = VenueCategory.find_by(category: "Restaurant")
new_venue.save
new_venue.photos.attach(io: file, filename: "asia-gondel.jpg", content_type: "image/jpg")
file.close

file = URI.open("https://www.visitpoulsbo.com/wp-content/uploads/2019/04/2019_04_10-Visit_Pbo_Sluys-00020.jpg")
new_venue = Venue.new(name: "Schäfer's", address: "Wallstraße 14, 10179, Berlin")
new_venue.venue_category = VenueCategory.find_by(category: "Bakery")
new_venue.save
new_venue.photos.attach(io: file, filename: "schaefers.jpg", content_type: "image/jpg")
file.close

file = URI.open("https://1.bp.blogspot.com/-rLDlR08j1Hc/U52wCK0kexI/AAAAAAAAJOM/GIggQda22Ag/s1600/Museums+Pergamon+Berlin+P1010523.JPG")
new_venue = Venue.new(name: "Pergamonmuseum", address: "Bodestraße 1-3, 10178, Berlin")
new_venue.venue_category = VenueCategory.find_by(category: "Museum")
new_venue.photos.attach(io: file, filename: "pergamon.jpg", content_type: "image/jpg")
new_venue.save
file.close

file = URI.open("https://egyptianstreets.com/wp-content/uploads/2018/01/3-8.jpg")
new_venue = Venue.new(name: "CineStar CUBIX", address: "Rathausstraße 1, 10178, Berlin")
new_venue.venue_category = VenueCategory.find_by(category: "Cinema")
new_venue.photos.attach(io: file, filename: "cinestar-cubix.jpg", content_type: "image/jpg")
new_venue.save
file.close

file = URI.open("https://blickgewinkelt.de/wp-content/uploads/2018/09/Dussmann-Berlin-6.jpg")
new_venue = Venue.new(name: "Dussman das KulturKaufhaus", address: "Friedrichstraße 90, 10117, Berlin")
new_venue.venue_category = VenueCategory.find_by(category: "Shop")
new_venue.photos.attach(io: file, filename: "dussman.jpg", content_type: "image/jpg")
new_venue.save
file.close

file = URI.open("https://www.tubefilter.com/wp-content/uploads/2021/02/mr-beast-burger-one-million-1400x825.jpg")
new_venue = Venue.new(name: "Mr Imbiss BURGER", address: "Schützenstraße 2, 10117, Berlin")
new_venue.venue_category = VenueCategory.find_by(category: "Other")
new_venue.photos.attach(io: file, filename: "mrimbissburger.jpg", content_type: "image/jpg")
new_venue.save
file.close

file = URI.open("https://media.blogto.com/articles/future-bakery-toronto-2.jpg?w=2048&cmd=resize_then_crop&height=1365&quality=70")
new_venue = Venue.new(name: "Bäcker Wiedemann", address: "Karl-Liebknecht-Str. 5, 10178, Berlin")
new_venue.venue_category = VenueCategory.find_by(category: "Bakery")
new_venue.photos.attach(io: file, filename: "bakery.jpg", content_type: "image/jpg")
new_venue.save
file.close

file = URI.open("https://www.gourmet-blog.de/wp-content/uploads/2016/04/Colette-Tim-Raue-Berlin_1.jpeg")
new_venue = Venue.new(name: "Charlotte 1", address: "Charlottenstraße 1, 10969, Berlin")
new_venue.venue_category = VenueCategory.find_by(category: "Restaurant")
new_venue.photos.attach(io: file, filename: "charlotte1.jpg", content_type: "image/jpg")
new_venue.save
file.close

file = URI.open("https://burger-meister.de/wp-content/uploads/2021/04/Burgermeister-Closeup.jpg")
new_venue = Venue.new(name: "Burgermeister Alexanderplatz", address: "Dircksenstraße 113, 10178, Berlin")
new_venue.venue_category = VenueCategory.find_by(category: "Restaurant")
new_venue.photos.attach(io: file, filename: "burgermeister.jpg", content_type: "image/jpg")
new_venue.save
file.close

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

# saved_venue

puts "Finished! (6/6)"
