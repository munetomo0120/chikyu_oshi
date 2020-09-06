class Post < ApplicationRecord
  # 名前のカラム名で軽度と緯度が取得できるようにする
  geocoded_by :name
  after_validation :geocode

  validates :name, presence: true, uniqueness: true
  validates :country_id, presence: true
  validates :description, presence: true, length: { maximum: 255 }
  
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :country
  # 複数カラムであいまい検索できる
  def self.search(search)
    if search != ""
      Post.where(['name LIKE(?) or description LIKE(?)', "%#{search}%", "%#{search}%"])
    else
      Post.all
    end
  end
end
