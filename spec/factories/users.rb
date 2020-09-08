FactoryBot.define do

  factory :user do
    # 以下2行はuser_spec.rbのテストにて使用
    # nickname              {"abe"}
    # email                 {"kkk@gmail.com"}

    password = Faker::Internet.password(min_length: 6)
    password              { password }
    password_confirmation { password }
    
    # 以下2行はposts_controller_spec.rbのindexアクションのテストにて使用
    sequence(:nickname) { Faker::Name.name }
    sequence(:email) { Faker::Internet.email }
  end

end