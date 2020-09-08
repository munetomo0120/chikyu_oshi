require 'rails_helper'
# 1 nicknameとemail、passwordとpassword_confirmationが存在すれば登録できること
# 2 nicknameが空では登録できないこと
# 3 emailが空では登録できないこと
# 4 passwordが空では登録できないこと
# 5 passwordが存在してもpassword_confirmationが空では登録できないこと
# 6 重複したnicknameが存在する場合登録できないこと
# 7 重複したemailが存在する場合登録できないこと
# 8 passwordが6文字以上であれば登録できること
# 9 passwordが5文字以下であれば登録できないこと
describe User do
  describe '#create' do
    # 1
    it "is valid with a nickname, email, password and password_confirmation" do
      user = build(:user)
      expect(user).to be_valid
    end
    # 2
    it "is invalid without a nickname" do
      # user = User.new(nickname: "", email: "aaa@aaa.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa")
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end
    # 3
    it "is invalid without a email" do
      # user = User.new(nickname: "test", email: "", password: "aaaaaaaa", password_confirmation: "aaaaaaaa")
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end
    # 4
    it "is invalid without a password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end
    # 5
    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      # binding.pry
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end
    # 6
    it "is invalid with a duplicate nickname" do
      user = create(:user)
      another_user = build(:user, nickname: "abe")
      another_user.valid?
      # binding.pry
      expect(another_user.errors[:nickname]).to include("はすでに存在します")
    end
    # 7
    it "is invalid with a duplicate email" do
      user = create(:user)
      another_user = build(:user, email: "kkk@gmail.com")
      another_user.valid?
      # binding.pry
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end
    # 8
    it "is valid with a password that has more than 6 characters" do
      user = build(:user, password: "aaaaaa", password_confirmation: "aaaaaa")
      user.valid?
      # binding.pry
      expect(user).to be_valid
    end
    # 9
    it "is invalid with a password that has less than 5 characters" do
      user = build(:user, password: "aaaaa", password_confirmation: "aaaaa")
      user.invalid?
      # binding.pry
      expect(user.errors[:password]).to include("は6文字以上で入力してください")
    end
  end
end