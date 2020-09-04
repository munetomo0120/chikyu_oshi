class Post < ApplicationRecord
  # 名前のカラム名で軽度と緯度が取得できるようにする
  geocoded_by :name
  after_validation :geocode
end
