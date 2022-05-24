# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy all..."
User.destroy_all
Computer.destroy_all

puts "Create users..."
freddy = User.create!(first_name: 'Frederik', last_name: 'Feldmeier', email:'f.feldmeier98@googlemail.com', password: '123456', username: 'elfeldos', status: 'false')
johanna = User.create!(first_name: 'Johanna', last_name: 'Florange', email:'johanna@gmail.com', password: '1234567', username: 'jo-nana', status: 'false')

puts "Create products..."
Computer.create!(name: 'MacBookPro', category: 'Laptop', year: '2017', details: 'Great shape - almost not used', availiability: 'true', price:'89.99', user: freddy)
Computer.create!(name: 'MacBookAir', category: 'Laptop', year: '2019', details: 'Heavily used', availiability: 'true', price:'72.99', user: johanna)
Computer.create!(name: 'Razer Blade 15', category: 'Laptop', year: '2021', details: '11th Gen Intel® Core™ i7-11800H 8 Core (2.3GHz / 4.6GHz)', availiability: 'true', price:'99.99', user: johanna)
Computer.create!(name: 'ASUS ROG Zephyrus G14', category: 'Laptop', year: '2020', details: 'Beeldscherm: 14 inch (2560 x 1440)', availiability: 'true', price:'35.99', user: freddy)
Computer.create!(name: 'iMac', category: 'PC', year: '2019', details: 'Great shape!', availiability: 'true', price:'53.99', user: freddy)
Computer.create!(name: 'Asus Zenbook', category: 'Laptop', year: '2016', details: 'Great graphics', availiability: 'true', price:'16.99', user: johanna)
Computer.create!(name: 'Razer Blade 17', category: 'Laptop', year: '2022', details: '13th Gen Intel® Core™ i7-11800H 8 Core (2.3GHz / 4.6GHz)', availiability: 'true', price:'99.99', user: johanna)
Computer.create!(name: 'HP Zephyrus G17', category: 'PC', year: '2020', details: 'Beeldscherm: 21 inch', availiability: 'true', price:'35.99', user: freddy)
puts "done!"
