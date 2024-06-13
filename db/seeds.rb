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
image = URI.open("https://i.ibb.co/DpzSSpZ/famille-nieuwenhuyse.png")
hugo.family_photo.attach(io: image, filename: "#{hugo.family_name}.jpg")
hugo.save

martin = User.create(email: "martin@test.com", password: "123456", family_name: "Dubuisson", home_address: "Rue franklin 61, 1000 Brussels", presentation: "Hi there, we are the Dubuisson Fam and we are very precious about our Movie Friday tradition ! If you ever join, we will make sure to have enough popcorn for everyone ;)", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1587654542342-c6f9bf970132?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
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

# ----------------- Extended Seed for Demo ----------------- #
sophie = User.create(email: "sophie@test.com", password: "123456", family_name: "Dubois", home_address: "Avenue Louise 54, 1000 Brussels", presentation: "Hey, we are the Dubois ! We love spending time outdoors, exploring nature trails, and playing board games. Our friendly dog, Max, loves joining us on our adventures.", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1611024847487-e26177381a3f?q=80&w=3648&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
sophie.family_photo.attach(io: image, filename: "#{sophie.family_name}.jpg")
sophie.save

mehmet = User.create(email: "mehmet@test.com", password: "123456", family_name: "Çelik", home_address: "Rue Royale 23, 1000 Brussels", presentation: "Hello hello, welcome at the Çelik family. We enjoy cooking together, playing soccer in the park, and we have a huge comics library we would LOVE to share !", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1598887048474-3e0be05bd11f?q=80&w=3419&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D                                                    ")
mehmet.family_photo.attach(io: image, filename: "#{mehmet.family_name}.jpg")
mehmet.save

charlotte = User.create(email: "charlotte@test.com", password: "123456", family_name: "Leroy", home_address: "Boulevard du Souverain 30, 1170 Watermael-Boitsfort", presentation: "Greetings! The Leroy's enjoy gardening, and crafting DIY projects. We're open to hosting playdates and exploring new activities with other families.", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1556909172-bd5315ff61a0?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
charlotte.family_photo.attach(io: image, filename: "#{charlotte.family_name}.jpg")
charlotte.save

pierre = User.create(email: "pierre@test.com", password: "123456", family_name: "Leclercq", home_address: "Rue de la Loi 200, 1040 Etterbeek", presentation: "Bonjour, bonjour. We love cooking and watching movies. Our home is pet-friendly, and we even have a very friendly parrot.", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1530986380366-2c4caefe7e4b?q=80&w=3774&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
pierre.family_photo.attach(io: image, filename: "#{pierre.family_name}.jpg")
pierre.save

larissa = User.create(email: "larissa@test.com", password: "123456", family_name: "Pierson", home_address: "Chaussée de Louvain 775, 1140 Evere", presentation: "Hello, from the Pierson ! We enjoy art projects and getting creative during our family workshops, we would be happy to share them with you. We even have a rabbit !", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1601758260944-72f34e1b8d57?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTA3fHxmYW1pbHl8ZW58MHx8MHx8fDA%3D")
larissa.family_photo.attach(io: image, filename: "#{larissa.family_name}.jpg")
larissa.save

elias = User.create(email: "elias@test.com", password: "123456", family_name: "Van Damme", home_address: "Boulevard Anspach 24, 1000 Brussels", presentation: "Hello, we're the Van Damme family. Are you passionate about sports too ? Then it will most certainly be a match. Our weekends often include family bike rides and testing new sports :D", point_count: 100)
image = URI.open("https://plus.unsplash.com/premium_photo-1682090931683-9183c0630c1d?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
elias.family_photo.attach(io: image, filename: "#{elias.family_name}.jpg")
elias.save

alicia = User.create(email: "alicia@test.com", password: "123456", family_name: "Gonzalez", home_address: "Avenue de la Toison d'Or 45, 1060 Saint-Gilles", presentation: "Hello from the Gonzalez family! We love experimenting in the kitchen, more specifically when baking delicious desserts. Our dog enjoys playing fetch and joining us on walks in the park.", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1609253925210-c64083102ae5?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
alicia.family_photo.attach(io: image, filename: "#{alicia.family_name}.jpg")
alicia.save

luca = User.create(email: "luca@test.com", password: "123456", family_name: "Ricci", home_address: "Rue Belliard 35, 1040 Etterbeek", presentation: "Hi, we're the Ricci family. We enjoy playing sports and our kids love drawing and painting. Our home is a creative space, and we're excited to share our passion for art and sports with other families.", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1603206014018-548a4cf56758?q=80&w=3280&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
luca.family_photo.attach(io: image, filename: "#{luca.family_name}.jpg")
luca.save

emma = User.create(email: "emma@test.com", password: "123456", family_name: "Dupont", home_address: "Chaussée de Waterloo 600, 1050 Ixelles", presentation: "Hellooo, our weekends often include outdoor adventures and music sessions at home, we would be happy to welcome your kids at some of them !!", point_count: 100)
image = URI.open("https://plus.unsplash.com/premium_photo-1681912055174-fe546aebb592?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
emma.family_photo.attach(io: image, filename: "#{emma.family_name}.jpg")
emma.save

ahmed = User.create(email: "ahmed@test.com", password: "123456", family_name: "Khalid", home_address: "Avenue Fonsny 47, 1060 Saint-Gilles", presentation: "Hello, our kids play kinball every weekend, they would love to let you discover their sport and integrate you. Our home is a place of creativity, and we're excited to meet other families with similar interests.", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1621836250063-ba0599d5b110?q=80&w=2000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
ahmed.family_photo.attach(io: image, filename: "#{ahmed.family_name}.jpg")
ahmed.save

julie = User.create(email: "julie@test.com", password: "123456", family_name: "Martin", home_address: "Rue de la Loi 15, 1000 Brussels", presentation: "Hello bonjouuur. We enjoy reading, playing board games, and cooking together. Our weekends often include family movie nights and walks in the park.", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1641064496126-cf64a61c6fae?q=80&w=3872&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
julie.family_photo.attach(io: image, filename: "#{julie.family_name}.jpg")
julie.save

thomas = User.create(email: "thomas@test.com", password: "123456", family_name: "Lambert", home_address: "Avenue Louise 150, 1050 Ixelles", presentation: "Hello, we're the Lambert family. We enjoy gardening, listening to music, and DIY projects. Our home is a place of creativity and relaxation, and we're excited to connect with other families.", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1541297340968-d601c6ea16bd?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
thomas.family_photo.attach(io: image, filename: "#{thomas.family_name}.jpg")
thomas.save

laura = User.create(email: "laura@test.com", password: "123456", family_name: "Bosmans", home_address: "Chaussée de Wavre 300, 1040 Etterbeek", presentation: "Hello, we are the Bosmans family. We enjoy outdoor activities, cooking, and spending time with our pets. Our weekends often include hikes, cooking experiments, and pet adventures.", point_count: 100)
image = URI.open("https://plus.unsplash.com/premium_photo-1664442782783-24bbdd2fd432?q=80&w=3774&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
laura.family_photo.attach(io: image, filename: "#{laura.family_name}.jpg")
laura.save

vincent = User.create(email: "vincent@test.com", password: "123456", family_name: "Jacobs", home_address: "Rue de la Loi 100, 1040 Etterbeek", presentation: "Hi, we're the Jacobs family. We love sports, arts, and community events. Our home is a place of warmth and creativity, and we're excited to share our passions with other families.", point_count: 100)
image = URI.open("https://images.unsplash.com/photo-1638202948587-ac48463ddb1f?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
vincent.family_photo.attach(io: image, filename: "#{vincent.family_name}.jpg")
vincent.save

lena = User.create(email: "lena@test.com", password: "123456", family_name: "Vanderbeeken", home_address: "Avenue Louise 300, 1050 Ixelles", presentation: "Hello, we are the Vanderbeeken family. We enjoy music, reading, and exploring new cuisines. Our weekends often include music jam sessions and culinary adventures.", point_count: 100)
image = URI.open("https://plus.unsplash.com/premium_photo-1661475916373-5aaaeb4a5393?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
lena.family_photo.attach(io: image, filename: "#{lena.family_name}.jpg")
lena.save

alexandre = User.create(email: "alexandre@test.com", password: "123456", family_name: "Vermeulen", home_address: "Rue Belliard 75, 1040 Etterbeek", presentation: "Hello, we're the Vermeulen family. We love nature, science, and family outings. Our home is filled with curiosity and joy, and we're excited to meet other families who share our interests.", point_count: 100)
image = URI.open("https://plus.unsplash.com/premium_photo-1661281363854-a9599b110b86?q=80&w=2912&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
alexandre.family_photo.attach(io: image, filename: "#{alexandre.family_name}.jpg")
alexandre.save

# ----------------- Extended Seed for Demo ----------------- #




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

valerie = Child.create!(name: "valerie", gender: "female", birthday: "2018-08-13", user: User.find_by(family_name: "Dubuisson"))
image = URI.open("https://images.unsplash.com/photo-1594918794521-a0c01cdff8c0?q=80&w=1975&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
valerie.child_photo.attach(io: image, filename: "#{valerie.name}.jpg")
valerie.save

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

testdate9 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+1)
testdate10 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+2)
testdate11 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+3)
testdate12 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+4)
testdate13 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+5)
testdate14 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+6)
testdate15 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+7)
testdate16 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+8)
testdate17 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+9)
testdate18 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+10)
testdate19 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+11)
testdate20 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+12)
testdate21 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+13)
testdate22 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+14)
testdate23 = AvailableDate.create!(start_date: "2024-06-05 19:30", end_date: "2024-07-28 23:30", category: "Babysitting", user_id: User.first.id+15)

puts "Created #{AvailableDate.count} availabilities !"
