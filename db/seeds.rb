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

User.trainer.each do |user|
  user.trainers.create(athletic_background: "D1 Basketball player for Duke, also I've been training since before pre-k", started_training: "I've been athletic my whole life",
      specialties: "I specialize in weight loss and powerlifting", bio: "My name is Jack, I'm from Denver, Colorado. I'm a very postive and active guy!",
      availability: "Mon - Fridays", location: "Denver", certificate_id: "1232384824-324")
end

User.client.each do |user|
  user.clients.create(height: 5.2, birthday: "10/12/09", injuries: "Broken ankle", goals: "Loose weight", athletic_background: "High school football", 
    work_history: "worked at 3 places", location: "Denver", notes: "Long list of notes", weight: 170)
end
