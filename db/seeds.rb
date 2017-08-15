# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
	User.create({
		email:Faker::Internet.email,
		username:Faker::Name.name,
		password:"12345678"
	})
end

20.times do 
	start_time = rand(Time.parse("2017-7-16 14:40:34")..Time.parse("2017-8-20 15:20:23"))
	end_time = start_time + (1..60).to_a.sample.minutes
	Event.create!({
		user:User.user.sample,
		art:Art.all.sample,
		title:Faker::Lorem.word,
		start_time:start_time,
		end_time:end_time,
		event_type:(0..3).to_a.sample
	})
end