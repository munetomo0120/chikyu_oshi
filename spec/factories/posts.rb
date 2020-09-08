FactoryBot.define do
  factory :post do
    # name {"富士山"}
    description {"日本一高い山です"}
    latitude {35.5}
    longitude {111.1}
    country_id {1}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    sequence(:name) { Faker::Nation.nationality }
    user
  end
end