class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # ゲストユーザーを探す or 作成する機能。
  # find_or_create_by!で引数の条件に該当するデータがあればそれを返すfind_by(nickname, email)、なければ新規作成createします。
  # →ゲストユーザーをあらかじめ作成する手間を省ける
  # SecureRandomでランダムなパスワードを生成
  def self.guest
    find_or_create_by!(nickname: 'ゲスト', email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end

  validates :nickname, presence: true, uniqueness: { case_sensitive: true }
  validates :text, length: { maximum: 255 }
  
  has_many :posts, dependent: :destroy
  # いいね用
  has_many :likes, dependent: :destroy
  has_many :like_posts, through: :likes, source: :post
  mount_uploader :image, ImageUploader
  mount_uploader :header_image, ImageUploader
end
