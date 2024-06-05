User.destroy_all
Child.destroy_all
AvailableDate.destroy_all

puts "Creating Users and their Family..."

kenta = User.create(email: "kenta@test.com", password: "123456", family_name: "Merry", home_address: "Avenue Street, 50, 1000 Brussels", presentation: "Welcome to the Merry's, a fun and happy family of 4. We love playing (video) games together, trying out new sports and eating rocks ! Haha it's a joke. But imagine...", point_count: 100)
hugo = User.create(email: "hugo@test.com", password: "123456", family_name: "Nieuwenhuyse", home_address: "Avenue Street, 50, 1000 Brussels", presentation: "Good day fellow Bebayers, we are the Nieuwenhuyse's ! Don't be shy, we are always happy to meet new families and organize awesome creative workshops or excursions whenever we feel like it !", point_count: 100)
martin = User.create(email: "martin@test.com", password: "123456", family_name: "Dubuisson", home_address: "Avenue Street, 50, 1000 Brussels", presentation: "Hi there, we are the Dubuisson Fam and we are very precious about our Movie Friday tradition ! If you ever join, we will make sure to have enough popcorn for everyone ;)", point_count: 100)
pedro = User.create(email: "pedro@test.com", password: "123456", family_name: "Pan", home_address: "Avenue Street, 50, 1000 Brussels", presentation: "Hello beautiful peeps. Beware, no drama or sadness allowed in the Pan's House, only smiles xP.", point_count: 100)
mathieu = User.create(email: "mathieu@test.com", password: "123456", family_name: "Heynen", home_address: "Avenue Street, 50, 1000 Brussels", presentation: "Bonjour everyone, we have a wonderful room full of mangas. Come read our mangas. Please. Like, really.", point_count: 100)

puts "Created #{User.count} Users and their Family !"

puts "Creating children..."

enzo = Child.create!(name: "Enzo", gender: "male", birthday: "2015-03-13", user: User.first)
olivia = Child.create!(name: "Olivia", gender: "female", birthday: "2016-02-12", user: User.first)
pipin = Child.create!(name: "Pipin", gender: "male", birthday: "2018-01-02", user: User.last)
geneviève = Child.create!(name: "Geneviève", gender: "female", birthday: "2021-10-21", user: User.last)

puts "Created #{Child.count} children !"

puts "Creating availabilities..."

testdate1 = AvailableDate.create!(start_date: "2024-06-19 12:00", end_date: "2024-06-21 18:00", category: "Babysitting", user: User.first)
testdate2 = AvailableDate.create!(start_date: "2024-06-20 13:00", end_date: "2024-06-20 19:00", category: "Babysitting", user: User.first)
testdate3 = AvailableDate.create!(start_date: "2024-07-01 16:30", end_date: "2024-07-01 19:30", category: "Pick up at school", user: User.last)
testdate4 = AvailableDate.create!(start_date: "2024-07-05 19:30", end_date: "2024-07-05 23:30", category: "Babysitting", user: User.last)

puts "Created #{AvailableDate.count} availabilities !"
