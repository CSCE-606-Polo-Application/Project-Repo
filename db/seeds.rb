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
    horse_name: "Bessy",
    brand_number: "6",
    availability: true
},
{
    horse_name: "Pixie",
    brand_number: "9",
    availability: true
},
{
    horse_name: "Oren",
    brand_number: "0",
    availability: true
},
{
    horse_name: "Honey",
    brand_number: "2",
    availability: true
},
{
    horse_name: "Starr",
    brand_number: "4",
    availability: false
},
{
    horse_name: "Elmer",
    brand_number: "5",
    availability: false
},
{
    horse_name: "Hermione",
    brand_number: "1",
    availability: true
},
{
    horse_name: "Flash",
    brand_number: "7",
    availability: false
}])

Officer.destroy_all

Officer.create!([{
    member_id: 1,
    position: "President"
},
{
    member_id: 2,
    position: "Vice President"
},
{
    member_id: 3,
    position: "Treasurer"
}])

RidingPreference.destroy_all

RidingPreference.create!([{
    member_id: 1 ,
    horse_id: 1 
},
{
    member_id: 1 ,
    horse_id: 2
},
{
    member_id: 2 ,
    horse_id: 1
},
{
    member_id: 4 ,
    horse_id: 6
},
{
    member_id: 5 ,
    horse_id: 3
},
{
    member_id: 5,
    horse_id: 4
}])

RidingTime.destroy_all

RidingTime.create!([{
    member_id: 4 ,
    horse_id: 8 ,
    officer_id: 3,
    riding_date: "2022-03-23",
    riding_time: "18:00"
},
{
    member_id: 5,
    horse_id: 8,
    officer_id: 3,
    riding_date: "2022-03-23",
    riding_time: "19:00"
},
{
    member_id: 2,
    horse_id: 3,
    officer_id: 3,
    riding_date: "2022-03-23",
    riding_time: "20:00"
}])