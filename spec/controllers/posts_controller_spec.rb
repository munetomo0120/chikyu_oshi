require 'rails_helper'

describe PostsController, type: :controller do
  # newアクション
  describe "GET #new" do
    # newアクションの持つビューに正しく遷移できるか
    it "renders the :new tenplate" do
      get :new
      expect(response).to render_template :new
    end
  end
  # editアクション
  describe 'GET #edit' do
    # アクション内で定義されているインスタンス変数の値が期待したものになるか
    it "assigns the requested post to @post" do
      post = create(:post)
      get :edit, params: { id: post }
      expect(assigns(:post)).to eq post 
    end
    # editアクションの持つビューに正しく遷移できるか
    it "renders the :edit template" do
      post = create(:post)
      get :edit, params: { id: post }
      expect(response).to render_template :edit
    end
  end
  # indexアクション
  describe "GET #index" do
    # アクション内で定義されているインスタンス変数が作成日時の新しい順で表示されるか
    it "populates an array of posts ordered by created_at DESC" do
      posts = create_list(:post, 3)
      get :index
      expect(assigns(:posts)).to match(posts.sort{ |a, b| b.created_at <=> a.created_at })
    end
    # indexアクションの持つビューに正しく遷移できるか
    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end
  
end