# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Client.destroy_all
Trainer.destroy_all

25.times do 
  User.create(name: Faker::Name.name, 
              username: Faker::Internet.username, 
              email: Faker::Internet.email, 
              password: Faker::Internet.password)
end

25.times do 
  User.create(name: Faker::Name.name, 
              username: Faker::Internet.username, 
              email: Faker::Internet.email, 
              password: Faker::Internet.password, 
              role: "trainer")
end