Blog::Application.routes.draw do

  resources :posts
  resources :users

  root to: 'posts#index'

end
