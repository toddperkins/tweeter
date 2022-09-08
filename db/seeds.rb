# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# dummy users
(1..10).each do |user_id|
	User.create!(
		id: user_id,
		email: Faker::Internet.email,
		password: 'password',
		password_confirmation: 'password',
		confirmed_at: '2022-09-04 23:38:37.721364',
		confirmation_sent_at: '2022-09-04 23:38:36.194878',
		failed_attempts: 0,
		created_at: '2022-09-04 23:38:36.194743',
		updated_at: '2022-09-04 23:38:50.162720',
		sign_in_count: 0,
		current_sign_in_at: '2022-09-04 23:38:50.162494',
		last_sign_in_at: '2022-09-04 23:38:50.162494',
		current_sign_in_ip: '::1',
		last_sign_in_ip: '::1',
		handle: "@" + Faker::Internet.username,
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name
	)
end

# my custom user
User.create!(
	email: 'fullstacktodd@gmail.com',
	password: 'password',
	password_confirmation: 'password',
	confirmed_at: '2022-09-04 23:38:37.721364',
	confirmation_sent_at: '2022-09-04 23:38:36.194878',
	failed_attempts: 0,
	created_at: '2022-09-04 23:38:36.194743',
	updated_at: '2022-09-04 23:38:50.162720',
	sign_in_count: 0,
	current_sign_in_at: '2022-09-04 23:38:50.162494',
	last_sign_in_at: '2022-09-04 23:38:50.162494',
	current_sign_in_ip: '::1',
	last_sign_in_ip: '::1',
	handle: "@toddperkins",
	first_name: 'Todd',
	last_name: 'Perkins'
)

# get all users
users = User.all

# loop through users and add tweets
users.each do |user|
	(1..5).each do |i|
		Tweet.create!(
			user_id: user.id, 
			body: Faker::Lorem.paragraph_by_chars(number: 200),
		)
	end 
end

