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
},
{
    std_first_name: "Ana",
    std_last_name: "Huff",
    uin: "000000002",
    telephone: "(979)999-9999",
    email: "aHuff@tamu.edu" 
},
{
    std_first_name: "Ruben",
    std_last_name: "Dean",
    uin: "000000003",
    telephone: "(979)777-7777",
    email: "rDean@tamu.edu"
},
{
    std_first_name: "Doyle",
    std_last_name: "Weaver",
    uin: "000000004",
    telephone: "(214)666-6666",
    email: "dWeaver@tamu.edu"
},
{
    std_first_name: "Della",
    std_last_name: "Kim",
    uin: "000000005",
    telephone: "(572)555-5555",
    email: "dKim@tamu.edu"
}])

Horse.destroy_all

Horse.create!([{
    
}])