FactoryBot.define do
  factory :biometric do
    sequence :email do |n|
      "dummbemail#{n}@gmail.com"
    end
    password {"secretPassword"}
    password_confirmation {"secretPassword"}
  end

  factory :biometric do 
    name {"Jack"}
    phone {"923-032-2323"}
    birthday {12.years.ago}
    height {5.2}
    starting_weight {170}
    current_weight {170}
    goal_weight {160}
  end
end