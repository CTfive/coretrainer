FactoryBot.define do 
  factory :user do
    sequence :email do |n|
     "dummyEmail#{n}@gmail.com" 
    end
    sequence :username do |n|
     "gettingbig10#{n}"
    end
    name { "Mark"}
    password { "secretPassword" }
    password_confirmation { "secretPassword" }
  end

  factory :role do 
    association :user_roles, factory: :client    
  end

  factory :client do
    height { "5.2" }
    weight { 140 }
    birthday { "10/12/95" }
    injuries {"Broken ankle three years ago"}
    goals {"Lose 20 pounds and tone up."}
    athletic_history { "Football in high school but worked out ever since" }
    location { "Denver, Colorado" }
  end
end


  # factory :user do
    
  # end

  # factory :profile do
    
  # end

  # factory :user do 
  #   sequence :email do |n|
  #     "dummbemail#{n}@gmail.com"
  #   end
  #   password {"secretPassword"}
  #   password_confirmation {"secretPassword"}
  #   name {"Jack"}
  #   phone {"923-032-2323"}
  #   birthday {12.years.ago}
  #   height {5.2}
  #   starting_weight {170}
  #   current_weight {170}
  #   goal_weight {160}
  # end
