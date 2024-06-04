User.destroy_all

puts "Creating Users and their Family..."

kenta = User.create(email: "kenta@test.com", password: "123456", family_name: "Merry", home_address: "Avenue Street, 50, 1000 Brussels", point_count: 100)

hugo = User.create(email: "hugo@test.com", password: "123456", family_name: "Nieuwenhuyse", home_address: "Avenue Street, 50, 1000 Brussels", point_count: 100)

martin = User.create(email: "martin@test.com", password: "123456", family_name: "Dubuisson", home_address: "Avenue Street, 50, 1000 Brussels", point_count: 100)

pedro = User.create(email: "pedro@test.com", password: "123456", family_name: "Pan", home_address: "Avenue Street, 50, 1000 Brussels", point_count: 100)

mathieu = User.create(email: "mathieu@test.com", password: "123456", family_name: "Heynen", home_address: "Avenue Street, 50, 1000 Brussels", point_count: 100)

puts "Created #{User.count} Users and their Family !"
