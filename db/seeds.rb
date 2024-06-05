User.destroy_all

puts "Creating Users and their Family..."

kenta = User.create(email: "kenta@test.com", password: "123456", family_name: "Merry", home_address: "Avenue Street, 50, 1000 Brussels", presentation: "Welcome to the Merry's, a fun and happy family of 4. We love playing (video) games together, trying out new sports and eating rocks ! Haha it's a joke. But imagine...", point_count: 100)
hugo = User.create(email: "hugo@test.com", password: "123456", family_name: "Nieuwenhuyse", home_address: "Avenue Street, 50, 1000 Brussels", presentation: "Good day fellow Bebayers, we are the Nieuwenhuyse's ! Don't be shy, we are always happy to meet new families and organize awesome creative workshops or excursions whenever we feel like it !", point_count: 100)
martin = User.create(email: "martin@test.com", password: "123456", family_name: "Dubuisson", home_address: "Avenue Street, 50, 1000 Brussels", presentation: "Hi there, we are the Dubuisson Fam and we are very precious about our Movie Friday tradition ! If you ever join, we will make sure to have enough popcorn for everyone ;)", point_count: 100)
pedro = User.create(email: "pedro@test.com", password: "123456", family_name: "Pan", home_address: "Avenue Street, 50, 1000 Brussels", presentation: "Hello beautiful peeps. Beware, no drama or sadness allowed in the Pan's House, only smiles xP.", point_count: 100)
mathieu = User.create(email: "mathieu@test.com", password: "123456", family_name: "Heynen", home_address: "Avenue Street, 50, 1000 Brussels", presentation: "Bonjour everyone, we have a wonderful room full of mangas. Come read our mangas. Please. Like, really.", point_count: 100)

puts "Created #{User.count} Users and their Family !"
