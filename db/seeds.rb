# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


sh1 = Shop.create(name: 'Tesco', post_code: 'E17 6DE', opening_hours: '08:00-23:00')
sh2 = Shop.create(name: 'Morrison', post_code: 'E17 6SE', opening_hours: '08:00-23:00')
sh3 = Shop.create(name: 'Lidl', post_code: 'E10 7EE', opening_hours: '09:00-17:00')
sh4 = Shop.create(name: 'Savers', post_code: 'E11 5TE', opening_hours: '09:00-18:00')

by1 = Buyer.create(name: 'John Doe', post_code: 'E17 6DE', genre: 'Male', age: 45)
by2 = Buyer.create(name: 'Jane Doe', post_code: 'E11 6DE', genre: 'Female', age: 25)

sh1.items.create(name: 'Milk', brand: 'Tesco', price: '1', size: '1', buyer_id: 1)
sh2.items.create(name: 'Beer', brand: 'Carlsberg', price: '1.2', size: '440ml', buyer_id: 1)
sh3.items.create(name: 'Beer', brand: 'Foster', price: '1.3', size: '440ml', buyer_id: 2)
sh4.items.create(name: 'lemonade', brand: 'Fanta', price: '1', size: '2l', buyer_id: 1)
sh4.items.create(name: 'Bread', brand: 'HappyB', price: '0.75', size: '500gr', buyer_id: 2)

puts "seeded! with #{Item.all.count} items"