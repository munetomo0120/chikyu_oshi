Rails.application.routes.draw do
  # devise_for :users
  # ゲストユーザーが削除機能を使用できないようにするには，registrations.rbを編集する必要がある。
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  # ルートパス
  root 'posts#top'
  # トップページへのパス
  get 'posts/top', to: 'posts#top'
  get 'posts/about', to: 'posts#about'

  # postsコントローラ
  resources :posts do
    collection do
      # searchアクションへのパス
      get 'search'
      # get 'about'
    end
    member do
      post   '/like/:post_id' => 'likes#like',   as: 'like'
      delete '/like/:post_id' => 'likes#unlike', as: 'unlike'
    end
  
  end

  
  
  # usersコントローラ
  resources :users, only: [:index, :show] do
    collection do
      get :likes
    end
  end
end
