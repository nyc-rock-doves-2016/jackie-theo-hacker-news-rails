# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(full_name: "Theo Paul", email: "theo@theo.theo", password: "opensesame")
User.create!(full_name: "Jackie Feminella", email: "jaclyn@jaclyn.jaclyn", password: "opensesame")

Post.create!(title: "It's May", body: "Wow that was fast", user_id: 1)
Post.create!(title: "It's Monday", body: "Oh my gosh I'm tired", user_id: 2)
Post.create!(title: "Hello", body: "How are you?", user_id: 1)
Post.create!(title: "I'm doing well", body: "How about you?", user_id: 2)

Comment.create!(post_id: 1, user_id: 1, content: "True!")
Comment.create!(post_id: 2, user_id: 2, content: "It is Monday!")
