Family.destroy_all
User.destroy_all

puts "Creating Users and their Family..."

kenta = User.create(email: "kenta@test.com", password: "123456")
kenta_family = Family.create(family_name: "Merry", home_address: "Avenue Street, 50, 1000 Brussels", point_count: 100, user: kenta)

hugo = User.create(email: "hugo@test.com", password: "123456")
hugo_family = Family.create(family_name: "Nieuwenhuyse", home_address: "Avenue Street, 50, 1000 Brussels", point_count: 100, user: hugo)

martin = User.create(email: "martin@test.com", password: "123456")
martin_family = Family.create(family_name: "Dubuisson", home_address: "Avenue Street, 50, 1000 Brussels", point_count: 100, user: martin)

pedro = User.create(email: "pedro@test.com", password: "123456")
pedro_family = Family.create(family_name: "Pan", home_address: "Avenue Street, 50, 1000 Brussels", point_count: 100, user: pedro)

mathieu = User.create(email: "mathieu@test.com", password: "123456")
mathieu_family = Family.create(family_name: "Heynen", home_address: "Avenue Street, 50, 1000 Brussels", point_count: 100, user: mathieu)

puts "Created #{User.count} Users and their Family !"
