Rails.application.routes.draw do
  root 'posts#index'
  post 'posts' => 'posts#create'
  get 'posts/new' => 'posts#new', as: :new_post
  get 'posts/:id' => 'posts#show', as: :post

  get 'users' => 'users#index'
  get 'users/new' => 'users#new', as: :new_user
  post 'users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users do
  #   resources :posts
  # end

end
