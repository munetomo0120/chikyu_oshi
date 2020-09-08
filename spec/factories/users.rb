FactoryBot.define do

  factory :user do
    # nickname              {"abe"}
    # email                 {"kkk@gmail.com"}
    password              {"000000"}
    password_confirmation {"000000"}
    sequence(:nickname) { Faker::Name.name }
    sequence(:email) { Faker::Internet.email }
  end

end