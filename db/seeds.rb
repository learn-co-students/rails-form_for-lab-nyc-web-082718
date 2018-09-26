# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Student.create(first_name: "Olivier", last_name: "Willems")
  Student.create(first_name: "Jordan", last_name: "Farkas")
  Student.create(first_name: "Evans", last_name: "Wang")

  SchoolClass.create(title: "Intro to Ruby", room_number: 1)
  SchoolClass.create(title: "Intro to Rails", room_number: 2)
  SchoolClass.create(title: "Intro to JavaScript", room_number: 3)
