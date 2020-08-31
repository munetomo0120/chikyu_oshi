Rails.application.routes.draw do
  resources :posts
  root 'posts#top'
  get 'posts/top', to: 'posts#top'
end
