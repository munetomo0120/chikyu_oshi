Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root 'posts#top'
  get 'posts/top', to: 'posts#top'
end
