# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Member.destroy_all

Member.create!([{
    std_first_name: "Whitney",
    std_last_name: "Walker",
    uin: "000000001",
    telephone: "(972)888-8888",
    email: "whitneywalker@tamu.edu"
},
{
    std_first_name: "Zak",
    std_last_name: "Coleman",
    uin: "000000002",
    telephone: "(979)999-9999",
    email: "zakdcoleman@tamu.edu" 
},
{
    std_first_name: "Yada",
    std_last_name: "Van Noort",
    uin: "000000003",
    telephone: "(979)777-7777",
    email: "yadavannoort@tamu.edu"
},
{
    std_first_name: "Anastasia",
    std_last_name: "Papin",
    uin: "000000004",
    telephone: "(214)666-6666",
    email: "apaps98@tamu.edu"
},
{
    std_first_name: "Madelyn",
    std_last_name: "Newland",
    uin: "000000005",
    telephone: "(572)555-5555",
    email: "madelynnewland@tamu.edu"
},
{
    std_first_name: "Olivia",
    std_last_name: "Reynolds",
    uin: "000000006",
    telephone: "(979)999-9999",
    email: "oliviareynolds@tamu.edu" 
},
{
    std_first_name: "Taylor",
    std_last_name: "Lopez",
    uin: "000000007",
    telephone: "(979)999-9999",
    email: "taylo916@tamu.edu" 
},
{
    std_first_name: "Alex",
    std_last_name: "Rivera",
    uin: "000000008",
    telephone: "(979)999-9999",
    email: "airivera@tamu.edu" 
}])

Horse.destroy_all

Horse.create!([{
    horse_name: "Fortunata",
    brand_number: "1",
    availability: true
},
{
    horse_name: "Cervesita",
    brand_number: "2",
    availability: true
},
{
    horse_name: "Jalisco",
    brand_number: "3",
    availability: true
},
{
    horse_name: "Linda",
    brand_number: "4",
    availability: true
},
{
    horse_name: "Tejano",
    brand_number: "5",
    availability: true
},
{
    horse_name: "Hildago",
    brand_number: "6",
    availability: true
},
{
    horse_name: "Ivy",
    brand_number: "8",
    availability: false
},
{
    horse_name: "Full House",
    brand_number: "9",
    availability: true
},
{
    horse_name: "Flash",
    brand_number: "12",
    availability: true
},
{
    horse_name: "Pepsi",
    brand_number: "15",
    availability: true
},
{
    horse_name: "Malachi",
    brand_number: "16",
    availability: true
},
{
    horse_name: "Santa Fea",
    brand_number: "19",
    availability: true
},
{
    horse_name: "Sunshine",
    brand_number: "20",
    availability: true
},
{
    horse_name: "Dallas",
    brand_number: "21",
    availability: true
},
{
    horse_name: "Natasha",
    brand_number: "29",
    availability: true
},
{
    horse_name: "Martina",
    brand_number: "99",
    availability: true
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
},
{
    member_id: 4,
    position: "Secretary"
},
{
    member_id: 5,
    position: "Special Events"
},
{
    member_id: 6,
    position: "Horse Care"
},
{
    member_id: 7,
    position: "Horse Care"
},
{
    member_id: 8,
    position: "Horse Care Advisor"
},
])

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