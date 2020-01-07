# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.where(name: 'Marc', email: 'marc@mfts.io').first_or_create
Location.where(city: 'Helsinki', country: 'Finland', location_key: 133328).first_or_create
Location.where(city: 'Lappeenranta', country: 'Finland', location_key: 133330).first_or_create
