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
Computer.create!(name: 'MacBookPro', image: 'https://i0.wp.com/maplestore.in/wp-content/uploads/2021/10/MacBook_Pro_16-in_Silver_PDP_Image_Position-1__en-IN-scaled.jpg?fit=2560%2C2560&ssl=1', category: 'Laptop', year: '2017', details: 'Great shape - almost not used', availiability: 'true', price:'89.99', user: freddy, processor: "AMD Ryzen™ 7 5800H Processor 3.2 GHz (16M Cache, up to 4.4 GHz)", ram: "
32GB", storage: "1TB M.2 NVMe™ PCIe® 3.0 SSD", graphic_card: "NVIDIA® GeForce RTX™ 3050 Ti Laptop GPU")
Computer.create!(name: 'MacBookAir', image: 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/macbook-air-og-202011?wid=600&hei=315&fmt=jpeg&qlt=95&.v=1604278672000', category: 'Laptop', year: '2019', details: 'Heavily used', availiability: 'true', price:'72.99', user: johanna,  processor: "AMD Ryzen™ 7 5800H Processor 3.2 GHz (16M Cache, up to 4.4 GHz)", ram: "
32GB", storage: "1TB M.2 NVMe™ PCIe® 3.0 SSD", graphic_card: "NVIDIA® GeForce RTX™ 3050 Ti Laptop GPU")
Computer.create!(name: 'Razer Blade 15', image: 'https://assets3.razerzone.com/MCROgiaND6grDgWWm4Z9M1j1guc=/767x511/https%3A%2F%2Fhybrismediaprod.blob.core.windows.net%2Fsys-master-phoenix-images-container%2Fh5c%2Fhd3%2F9286405095454%2F210104-blade-15-ch8-fhd-1500x1000-1.jpg', category: 'Laptop', year: '2021', details: '11th Gen Intel® Core™ i7-11800H 8 Core (2.3GHz / 4.6GHz)', availiability: 'true', price:'99.99', user: johanna,  processor: "AMD Ryzen™ 7 5800H Processor 3.2 GHz (16M Cache, up to 4.4 GHz)", ram: "
32GB", storage: "1TB M.2 NVMe™ PCIe® 3.0 SSD", graphic_card: "NVIDIA® GeForce RTX™ 3050 Ti Laptop GPU")
Computer.create!(name: 'ASUS ROG Zephyrus G14', image: 'https://www.notebookcheck.nl/uploads/tx_nbc2/ASUSZephyrusG14-GA401IU__2__02.jpg', category: 'Laptop', year: '2020', details: 'Beeldscherm: 14 inch (2560 x 1440)', availiability: 'true', price:'35.99', user: freddy, processor: "AMD Ryzen™ 7 5800H Processor 3.2 GHz (16M Cache, up to 4.4 GHz)", ram: "
32GB", storage: "1TB M.2 NVMe™ PCIe® 3.0 SSD", graphic_card: "NVIDIA® GeForce RTX™ 3050 Ti Laptop GPU")
Computer.create!(name: 'iMac', image: 'https://www.icreatemagazine.nl/app/uploads/2021/04/imac-2021-nieuw.jpg', category: 'PC', year: '2019', details: 'Great shape!', availiability: 'true', price:'53.99', user: freddy,  processor: "AMD Ryzen™ 7 5800H Processor 3.2 GHz (16M Cache, up to 4.4 GHz)", ram: "
32GB", storage: "1TB M.2 NVMe™ PCIe® 3.0 SSD", graphic_card: "NVIDIA® GeForce RTX™ 3050 Ti Laptop GPU")
Computer.create!(name: 'Asus Zenbook', image: 'https://www.notebookcheck.nl/uploads/tx_nbc2/teaser_53.jpg', category: 'Laptop', year: '2016', details: 'Great graphics', availiability: 'true', price:'16.99', user: johanna,  processor: "AMD Ryzen™ 7 5800H Processor 3.2 GHz (16M Cache, up to 4.4 GHz)", ram: "
32GB", storage: "1TB M.2 NVMe™ PCIe® 3.0 SSD", graphic_card: "NVIDIA® GeForce RTX™ 3050 Ti Laptop GPU")
Computer.create!(name: 'Razer Blade 17', image: 'https://assets3.razerzone.com/gGI3HDoCD5iavWrRhTXbwDOyh4U=/1500x1000/https%3A%2F%2Fhybrismediaprod.blob.core.windows.net%2Fsys-master-phoenix-images-container%2Fhe1%2Fhe0%2F9286404931614%2F210104-blade-17-d8-fhd-1500x1000-1.jpg', category: 'Laptop', year: '2022', details: '13th Gen Intel® Core™ i7-11800H 8 Core (2.3GHz / 4.6GHz)', availiability: 'true', price:'99.99', user: johanna,  processor: "AMD Ryzen™ 7 5800H Processor 3.2 GHz (16M Cache, up to 4.4 GHz)", ram: "
32GB", storage: "1TB M.2 NVMe™ PCIe® 3.0 SSD", graphic_card: "NVIDIA® GeForce RTX™ 3050 Ti Laptop GPU")
Computer.create!(name: 'HP Zephyrus G17', image: 'https://www.hp.com/nl-nl/shop/Html/Merch/Images/c07962991_1750x1285.jpg', category: 'PC', year: '2020', details: 'Beeldscherm: 21 inch', availiability: 'true', price:'35.99', user: freddy,  processor: "AMD Ryzen™ 7 5800H Processor 3.2 GHz (16M Cache, up to 4.4 GHz)", ram: "
32GB", storage: "1TB M.2 NVMe™ PCIe® 3.0 SSD", graphic_card: "NVIDIA® GeForce RTX™ 3050 Ti Laptop GPU")
puts "done!"
