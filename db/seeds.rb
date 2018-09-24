# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

student = Student.create(first_name: "taylor", last_name: "young")
student1 = Student.create(first_name: "mim", last_name: "frank")

class1 = SchoolClass.create(title: "hi", room_number: 23)
class2 = SchoolClass.create(title: "hello", room_number: 3)
