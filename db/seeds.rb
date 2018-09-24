# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


SchoolClass.create(title: "a", room_number: 12)
SchoolClass.create(title: "4", room_number: 002)
SchoolClass.create(title: "bm", room_number: 25)
SchoolClass.create(title: "asdda", room_number: 4)


Student.create(first_name: "tom", last_name: "jerry")
Student.create(first_name: "d", last_name: "l")
Student.create(first_name: "alex", last_name: "gonz")
