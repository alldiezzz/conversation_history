# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

# Clear existing data
User.destroy_all
Project.destroy_all
Comment.destroy_all

# Create Users
puts "Creating Users..."
users = []
5.times do
  users << User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password"
  )
end

# Create Projects
puts "Creating Projects..."
projects = []
10.times do
  projects << Project.create!(
    user: users.sample,
    title: Faker::Company.catch_phrase,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    status: [ "ToDo", "InProgress", "Done" ].sample
  )
end

# Create Comments
puts "Creating Comments..."
20.times do
  Comment.create!(
    user: users.sample,
    project: projects.sample,
    body: Faker::Lorem.sentence(word_count: 10)
  )
end

puts "✅ Seeding completed!"
