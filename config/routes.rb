Rails.application.routes.draw do
  devise_for :users

  # postsコントローラ
  resources :posts do
    collection do
      # searchアクションへのパス
      get 'search'
    end
    member do
      post   '/like/:post_id' => 'likes#like',   as: 'like'
      delete '/like/:post_id' => 'likes#unlike', as: 'unlike'
    end
  
  end
  # ルートパス
  root 'posts#top'
  # トップページへのパス
  get 'posts/top', to: 'posts#top'
  
  # usersコントローラ
  resources :users, only: [:index, :show] do
    collection do
      get :likes
    end
  end
end
