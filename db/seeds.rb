# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: 

User.create!(email:'admin@example.com',
            password:'admin',
            password_confirmation: 'admin',
            admin: true 
)

25.times do |i|
    Product.create!(
        name: "Pizza",
        description: "yummy yum"
        price: 11.99,
        catering: true
    )
end