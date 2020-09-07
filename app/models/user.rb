class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: { case_sensitive: true }
  validates :text, length: { maximum: 255 }
  
  has_many :posts
  # いいね用
  has_many :likes, dependent: :destroy
  has_many :like_posts, through: :likes, source: :post
  mount_uploader :image, ImageUploader
  mount_uploader :header_image, ImageUploader
end
