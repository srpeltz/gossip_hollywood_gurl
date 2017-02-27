Rails.application.routes.draw do
  get 'posts' => 'posts#index'
  post 'posts' => 'posts#create'
  get 'posts/new' => 'posts#new', as: :new_post
  get 'posts/:id' => 'posts#show', as: :post
  get 'users' => 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
