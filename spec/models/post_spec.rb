require 'rails_helper'

describe Post, type: :model do
  describe '#create' do
    # nameとcountry_idとdescriptionがあれば登録できる
    it "is valid with a name, country_id and description" do
      post = build(:post)
      expect(post).to be_valid
    end
    # nameが空では登録できない
    it "is invalid with a name" do
      post = build(:post, name: "")
      post.valid?
      expect(post.errors[:name]).to include("を入力してください")
    end
    # country_idが空では登録できない
    it "is invalid with a country_id" do
      post = build(:post, country_id: "")
      post.valid?
      expect(post.errors[:country_id]).to include("を入力してください")
    end
    # descriptionが空では登録できない
    it "is invalid with a description" do
      post = build(:post, description: "")
      post.valid?
      expect(post.errors[:description]).to include("を入力してください")
    end
    # 重複したnameがある場合登録できない
    it "is invalid with a duplicate name" do
      post = create(:post)
      another_post = build(:post, name: "富士山")
      another_post.valid?
      expect(another_post.errors[:name]).to include("はすでに存在します")
    end
    # descriptionが256文字以上の場合登録できない
    it "is invalid with a description more than 256 characters" do
      post = build(:post, description: "aiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoa")
      post.valid?
      expect(post.errors[:description]).to include("は255文字以内で入力してください")
    end
    # descriptionが255文字以下の場合登録できる
    it "is valid with a description less than 255 characters" do
      post = build(:post, description: "aiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueoaiueo")
      post.valid?
      expect(post).to be_valid
    end

  end
  
end
