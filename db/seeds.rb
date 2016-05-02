# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

def rand_num
  rand(1..3)
end


3.times do
  user = Faker::Name.name
  User.create!(full_name:user, email:Faker::Internet.email(user), password: Faker::Internet.password)
end

2.times do
  Post.create!(title: Faker::Book.title, body: Faker::Hipster.paragraph, user_id: 1)
end

2.times do
  Post.create!(title: Faker::Book.title, body: Faker::Hipster.paragraph, user_id: 2)
end

2.times do
  Post.create!(title: Faker::Book.title, body: Faker::Hipster.paragraph, user_id: 3)
end

3.times do
  Comment.create!(content: Faker::StarWars.quote, user_id: rand_num, post_id: rand_num)
end

User.create!(full_name: "Theo Paul", email: "theo@theo.theo", password: "opensesame")
User.create!(full_name: "Jackie Feminella", email: "jaclyn@jaclyn.jaclyn", password: "opensesame")

Post.create!(title: "It's May", body: "Wow that was fast", user_id: 4)
Post.create!(title: "It's Monday", body: "Oh my gosh I'm tired", user_id: 5)
Post.create!(title: "Hello", body: "How are you?", user_id: 4)
Post.create!(title: "I'm doing well", body: "How about you?", user_id: 5)

Comment.create!(post_id: 7, user_id: 4, content: "True!")
Comment.create!(post_id: 8, user_id: 5, content: "It is Monday!")
