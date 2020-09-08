# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  [
    {
      nickname: '管理者',
      email: 'kanri@kanri.com',
      password: 'kanri1234',
      id: 1
    }
  ]
)

require "csv"

CSV.foreach('db/posts.csv') do |row|
  Post.create(:id => row[0], :name => row[1], :country_id => row[2], :latitude => row[3], :longitude => row[4], :user_id => row[5], :description => row[6])
end

# Post.create!(
#   [
#     {
#       name: '東京タワー',
#       country_id: 126,
#       description: '東京にあるタワーです',
#       latitude: 35.6586,
#       longitude: 139.745,
#       user_id: 1

#     }
#   ]

# )