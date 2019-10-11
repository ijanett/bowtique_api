# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

items = Item.create([
    {name: "Ruby Red", size: 0, price: 12.00, image: "/assets/images/rubyred.jpg"},
    {name: "Coral Foliage", size: 1, price: 14.00, image: "/assets/images/coralfoliage.jpg"},
    {name: "Dapper Seahorse", size: 1, price: 14.00, image: "/assets/images/dapperseahorses.jpg"},
    {name: "Silver & Muave", size: 0, price: 12.00, image: "/assets/images/silverandmuave.jpg"},
    {name: "Honey Bee", size: 0, price: 12.00, image: "/assets/images/buzzybee.jpg"},
    {name: "Merry & Bright", size: 1, price: 14.00, image: "/assets/images/merryandbright.jpg"},
    {name: "Royal Blue", size: 0, price: 12.00, image: "/assets/images/royalblue.jpg"},
    {name: "Oriental Plum", size: 1, price: 14.00, image: "/assets/images/orientalplum.jpg"},
    {name: "Paw-Pow", size: 1, price: 14.00, image: "/assets/images/pawpow.jpg"},
    {name: "Black Paisley", size: 0, price: 12.00, image: "/assets/images/blackpaisley.jpg"}
])

