# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: 

User.create!(email:'admin@example.com',
            password:'admin123',
            password_confirmation: 'admin123',
            admin: true 
)

Category.create!(heading: 'Futomaki', body: 'Classic rolls coated with nori', display: true)
Category.create!(heading: 'Nigiri', body: 'Rice balls topped with fish', display: true)
Category.create!(heading: 'California maki', body: 'Rich rolls with many ingredients to choose', display: true)

10.times do |i|
    california = Product.new(
        name: "California roll",
        description: "Deep-fried roll with salmon, cream cheese, avocado",
        price: 11.99,
        catering: true,
        category: Category.find(3) 
    )
    nigiri = Product.new(
        name: "Salmon teryaki",
        description: "Rice ball topped with teryaki-marinated salmon piece",
        price: 12.99,
        catering: true,
        category: Category.find(2) 
    )
    futomaki = Product.new(
        name: "Kanon tempura",
        description: "Salmon fried in tempura, cucumber, kampyo, spicy mayo",
        price: 10.99,
        catering: true,
        category: Category.find(1) 
    )
    california.image.attach(io: URI.open('https://picsum.photos/1920/1080'), filename: "#{i}_california_image.jpg")
    nigiri.image.attach(io: URI.open('https://picsum.photos/1920/1080'), filename: "#{i}_nigiri_image.jpg")
    futomaki.image.attach(io: URI.open('https://picsum.photos/1920/1080'), filename: "#{i}_futomaki_image.jpg")
    if i == 5
        california.featured = true 
        nigiri.featured = true
        futomaki.featured = true 
    end
    california.save 
    nigiri.save 
    futomaki.save 

end