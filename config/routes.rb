Rails.application.routes.draw do
  devise_for :users

  # postsコントローラ
  resources :posts do
    collection do
      # searchアクションへのパス
      get 'search'
    end
  end
  # ルートパス
  root 'posts#top'
  # トップページへのパス
  get 'posts/top', to: 'posts#top'
  
  # usersコントローラ
  resources :users, only: :show
end
