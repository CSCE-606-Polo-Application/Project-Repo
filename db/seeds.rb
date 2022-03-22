# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Member.destroy_all

Member.create!([{
    std_first_name: "Eunice",
    std_last_name: "Perkins",
    uin: "000000001",
    telephone: "(972)888-8888",
    email: "ePerkins@tamu.edu"
}])