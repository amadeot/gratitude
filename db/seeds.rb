# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create({phone:"3018013463", username:"amadeot", password: "test", password_confirmation: "test", active: 1, start_range:0, end_range:24})

g1 = Gratitude.create({message:"friends and family", message_date:"2016-03-09"})

u1.gratitudes.push(g1)


