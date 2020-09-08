class Post < ApplicationRecord
  # 名前のカラム名で軽度と緯度が取得できるようにする
  geocoded_by :name
  after_validation :geocode

  validates :name, presence: true, uniqueness: { case_sensitive: true }
  validates :country_id, presence: true
  validates :description, presence: true, length: { maximum: 255 }
  
  belongs_to :user
  # いいね用
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user

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
