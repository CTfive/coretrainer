# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


Role.create(trainer: "trainer")
Role.create(client: "client")

2.times do 
  User.create(name: 'Mick', username: 'Jeferson6060', email: '3242@gmail.com', password: '234234234')
end


Client.create(height: nil, weight: 234, birthday: "10/02/98", injuries: "I've torn my ACL and MCL, possiblity of a heart condition",
             goals: "Get my weight back down to below 200s and work on my knee", athletic_background: "I was a football player untill I had torn my acl and mcl.",
            work_history: "After football I became a WebDev and I  do not get out that much anymore due to my job.", location: "Denver")

user = User.first.roles

role2 = Role.find(2)

user << role2