# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


Role.create(name: "client")
Role.create(name: "trainer")

i = 1

i++

50.times do 
  User.create(name: 'Mick', username: 'Jeferson6060', email: "3242#{i}@gmail.com", password: "234234234#{i}")
end

25.times do
  Client.create(height: 220.2, weight: 234.4, birthday: "10/02/98", injuries: "I've torn my ACL and MCL, possiblity of a heart condition",
              goals: "Get my weight back down to below 200s and work on my knee", athletic_background: "I was a football player untill I had torn my acl and mcl.",
              work_history: "After football I became a WebDev and I  do not get out that much anymore due to my job.", location: "Denver")
end


users = User.all
role = Role.first

Client.all.each do |client|
  25.times do 
    users.role << users.sample
  end
end




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