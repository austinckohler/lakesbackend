# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Fish.destroy_all
Lake.destroy_all


lake1 = Lake.create(name: "Lake Martin", location: "Alabama")
lake2 = Lake.create(name: "Crater Lake", location: "Oregon")
lake3 = Lake.create(name: "Melton Lake", location: "Tennessee")

Fish.create(name: "Bluegill", description: "Small", lake: lake3)
Fish.create(name: "Carp", description: "Large", lake: lake1)
Fish.create(name: "Trout", description: "Medium", lake: lake2)
Fish.create(name: "Salmon", description: "Large", lake: lake2)
Fish.create(name: "Bass", description: "Medium", lake: lake3)
Fish.create(name: "Catfish", description: "Large", lake: lake1)

