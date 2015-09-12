# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



it1 = Item.create(name: 'Milk', brand: 'Tesco', price: '1', size: '1')
it2 = Item.create(name: 'Beer', brand: 'Carlsberg', price: '1.2', size: '440ml')
it3 = Item.create(name: 'Beer', brand: 'Foster', price: '1.3', size: '440ml')
it4 = Item.create(name: 'lemonade', brand: 'Fanta', price: '1', size: '2l')
it5 = Item.create(name: 'Bread', brand: 'HappyB', price: '0.75', size: '500gr')

puts "seeded! with #{Item.all.count} items"