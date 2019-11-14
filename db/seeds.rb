# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

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


# 25.times do 
#   User.client.clients.create()
# end

# 25.times do
#   User.find([:id]).clients.create(weight: 202.2,height: 220.2, birthday: "10/2/98", injuries: "I've torn my ACL and MCL, possiblity of a heart condition",
#     goals: "Get my weight back down to below 200s and work on my knee", athletic_background: "I was a football player untill I had torn my acl and mcl.",
#     work_history: "After football I became a WebDev and I  do not get out that much anymore due to my job.", location: "Denver")
# end

# 25.times do 
#   Trainer.create(athletic_background: "D1 Basketball player for Duke, also I've been training since before pre-k", started_training: "I've been athletic my whole life",
#   specialties: "I specialize in weight loss and powerlifting", bio: "My name is Jack, I'm from Denver, Colorado. I'm a very postive and active guy!",
#   availability: "Mon - Fridays", location: "Denver", certificate_id: "1232384824-324")
# end

# height: 220.2, weight: 234.4, birthday: "10/02/98", injuries: "I've torn my ACL and MCL, possiblity of a heart condition",
#               goals: "Get my weight back down to below 200s and work on my knee", athletic_background: "I was a football player untill I had torn my acl and mcl.",
#               work_history: "After football I became a WebDev and I  do not get out that much anymore due to my job.", location: "Denver"


# users = User.all
# role = Role.first

# Client.all.each do |client|
#   25.times do 
#     users. << users.sample
#   end
# end




#  users.roles << role

# user << role2
# t.text "athletic_background"
# t.date "started_training"
# t.text "specialties"
# t.text "bio"
# t.text "availability"
# t.string "location"
# t.string "certificate_id"
# t.text "other_credentials"

