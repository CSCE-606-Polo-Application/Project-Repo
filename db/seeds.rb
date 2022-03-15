# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

sections = [
    {title: "Sign Up", URI: "signUp"},
    {title: "The Herd", URI: "horses"},
    {title: "Contact Us", URI: "contactUs"}
                ]

Section.destroy_all

sections.each do |section|
    Section.create!(section)
end

horses = [
    {name: "Bill"},
    {name: "Charlie"},
    {name: "Chester"}
]


Horse.destroy_all
horses.each do |horse|
    Horse.create!(horse)
end

Officer.destroy_all

officers = [
    {name: "Yada", position: "Treasurer", telephone: "(xxx) xxx-xxxx", email: "polotreasurer@tamu.edu"}
]


officers.each do |officer|
    Officer.create!(officer)
end