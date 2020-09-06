class Post < ApplicationRecord
  # 名前のカラム名で軽度と緯度が取得できるようにする
  geocoded_by :name
  after_validation :geocode

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  
  

  belongs_to :user

  # 複数カラムであいまい検索できる
  def self.search(search)
    if search != ""
      Post.where(['name LIKE(?) or description LIKE(?) or country LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Post.all
    end
  end
end
