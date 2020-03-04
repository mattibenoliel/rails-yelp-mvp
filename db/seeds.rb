# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Epicure',
    address:      '1 rue de la paix',
    category:     'french',
    phone_number: '06 06 06 06 06'
  },
  {
    name:         'Calzone',
    address:      '2 rue de la paix',
    category:     'italian',
    phone_number: '06 06 06 06 06'
  },
  {
    name:         'Sushi',
    address:      '3 rue de la paix',
    category:     'japanese',
    phone_number: '06 06 06 06 06'
  },
  {
    name:         'Frite',
    address:      '4 rue de la paix',
    category:     'belgian',
    phone_number: '06 06 06 06 06'
  },
  {
    name:         'Nem',
    address:      '5 rue de la paix',
    category:     'chinese',
    phone_number: '06 06 06 06 06'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
