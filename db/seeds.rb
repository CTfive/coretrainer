# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Client.destroy_all
Trainer.destroy_all
Appointment.destroy_all
Workout.destroy_all

User.create(name: "Michael", 
username: Faker::Superhero.name, 
email: "mr.enviro@gmail.com", 
password: "password").clients.create(height: 5.2,
birthday: "10/12/09", 
injuries: "Fingers", 
goals: "Climb more hard rocks", 
athletic_history: "Rock climbing", 
current_work: "Computer work", 
location: "Denver", notes: "Long list of notes", 
weight: 170)

25.times do 
  User.create(name: Faker::FunnyName.name, 
              username: Faker::Superhero.name, 
              email: Faker::Internet.email, 
              password: "password")
end

25.times do 
  User.create(name: Faker::FunnyName.name, 
              username: Faker::Superhero.name, 
              email: Faker::Internet.email, 
              password: "password", 
              role: "trainer")
end

User.trainer.each do |user|
  user.trainers.create(athletic_background: Faker::GreekPhilosophers.quote, started_training: Faker::Date.backward(days: 40),
      specialties: Faker::Hipster.sentences, bio: Faker::TvShows::RickAndMorty.quote,
      availability: Faker::Date.between(from: 2.days.ago, to: Date.today), location: Faker::Address.city, certificate_id: Faker::IDNumber.invalid)
end

User.client.each do |user|
  user.clients.create(height: Faker::Number.decimal(l_digits: 1), birthday: Faker::Date.birthday(min_age: 18, max_age: 65), injuries: Faker::Hipster.sentences, goals: Faker::Movies::Lebowski.quote, athletic_history: Faker::GreekPhilosophers.quote, 
    current_work: Faker::Commerce.department, location: Faker::Space.planet, notes: Faker::TvShows::FamilyGuy.quote, weight: Faker::Number.number(digits: 10))
end

Trainer.all.each do |trainer|
  trainer.workouts.create(title: Faker::Ancient.god + "workout", description: Faker::TvShows::DumbAndDumber.quote, exercise: "The" + Faker::TvShows::Simpsons.character, sets: 5, reps: 5, miles: 2.2, lbs: Faker::Number.decimal(l_digits: 1), notes: Faker::TvShows::Simpsons.quote)
end

Client.ids.each do |client|
  Trainer.ids.each do |trainer|
    Appointment.create(client_id: client, trainer_id: trainer, start_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), end_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short) )
  end
end
