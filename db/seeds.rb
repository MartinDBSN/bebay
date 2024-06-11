ChildrenPool.destroy_all
Booking.destroy_all
AvailableDate.destroy_all
Child.destroy_all
User.destroy_all

# User/Family Creation

puts "Creating Users and their Family..."

kenta = User.create(email: "kenta@test.com", password: "123456", family_name: "Merry", home_address: "Rue de la loi, 17, 1000 Brussels", presentation: "Welcome to the Merry's, a fun and happy family of 4. We love playing (video) games together, trying out new sports and eating rocks ! Haha it's a joke. But imagine...", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1609220136736-443140cffec6?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
kenta.family_photo.attach(io: image, filename: "#{kenta.family_name}.jpg")
kenta.save

hugo = User.create(email: "hugo@test.com", password: "123456", family_name: "Nieuwenhuyse", home_address: "Cantersteen, 2, 1000 Brussels", presentation: "Good day fellow Bebayers, we are the Nieuwenhuyse's ! Don't be shy, we are always happy to meet new families and organize awesome creative workshops or excursions whenever we feel like it !", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1643818657367-491080baeece?q=80&w=3774&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
hugo.family_photo.attach(io: image, filename: "#{hugo.family_name}.jpg")
hugo.save

martin = User.create(email: "martin@test.com", password: "123456", family_name: "Dubuisson", home_address: "Rue franklin 61, 1000 Brussels", presentation: "Hi there, we are the Dubuisson Fam and we are very precious about our Movie Friday tradition ! If you ever join, we will make sure to have enough popcorn for everyone ;)", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1611024847487-e26177381a3f?q=80&w=3648&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
martin.family_photo.attach(io: image, filename: "#{martin.family_name}.jpg")
martin.save

pedro = User.create(email: "pedro@test.com", password: "123456", family_name: "Pan", home_address: "rue du marché aux herbes, 116 1000 Brussels", presentation: "Hello beautiful peeps. Beware, no drama or sadness allowed in the Pan's House, only smiles xP.", point_count: 100)
image = URI.open("https://plus.unsplash.com/premium_photo-1664641558603-8222c498b311?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
pedro.family_photo.attach(io: image, filename: "#{pedro.family_name}.jpg")
pedro.save

mathieu = User.create(email: "mathieu@test.com", password: "123456", family_name: "Heynen", home_address: "Quick kraainem", presentation: "Bonjour everyone, we have a wonderful room full of mangas. Come read our mangas. Please. Like, really.", point_count: 100)
image = URI.open("https://plus.unsplash.com/premium_photo-1673507495900-c490b88019de?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
mathieu.family_photo.attach(io: image, filename: "#{mathieu.family_name}.jpg")
mathieu.save

puts "Created #{User.count} Users and their Family !"

# Children creation

puts "Creating children..."

enzo = Child.create!(name: "Enzo", gender: "male", birthday: "2015-03-13", user: User.first)
image = URI.open("https://images.unsplash.com/photo-1471286174890-9c112ffca5b4?q=80&w=3869&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
enzo.child_photo.attach(io: image, filename: "#{enzo.name}.jpg")
enzo.save

olivia = Child.create!(name: "Olivia", gender: "female", birthday: "2016-02-12", user: User.first)
image = URI.open("https://images.unsplash.com/photo-1529672425113-d3035c7f4837?q=80&w=3600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
olivia.child_photo.attach(io: image, filename: "#{olivia.name}.jpg")
olivia.save

pipin = Child.create!(name: "Pipin", gender: "male", birthday: "2018-01-02", user: User.last)
image = URI.open("https://plus.unsplash.com/premium_photo-1674769115699-4f1103aa2718?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
pipin.child_photo.attach(io: image, filename: "#{pipin.name}.jpg")
pipin.save

geneviève = Child.create!(name: "Geneviève", gender: "female", birthday: "2021-10-21", user: User.last)
image = URI.open("https://images.unsplash.com/photo-1629783509182-68c8c190e952?q=80&w=3774&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
geneviève.child_photo.attach(io: image, filename: "#{geneviève.name}.jpg")
geneviève.save

puts "Created #{Child.count} children !"

# Availabilities Creation

puts "Creating availabilities..."

testdate1 = AvailableDate.create!(start_date: "2024-06-19 12:00", end_date: "2024-06-21 18:00", category: "Babysitting", user: User.first)
testdate2 = AvailableDate.create!(start_date: "2024-06-20 13:00", end_date: "2024-06-20 19:00", category: "Babysitting", user: User.first)
testdate3 = AvailableDate.create!(start_date: "2024-07-01 16:30", end_date: "2024-07-01 19:30", category: "Pick up at school", user: User.last)
testdate4 = AvailableDate.create!(start_date: "2024-07-05 19:30", end_date: "2024-07-05 23:30", category: "Babysitting", user: User.last)
testdate5 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+2)
testdate6 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Pick up at school", user_id: User.first.id+2)
testdate7 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+3)
testdate8 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+4)

puts "Created #{AvailableDate.count} availabilities !"
