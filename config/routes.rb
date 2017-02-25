Rails.application.routes.draw do
  get 'home' => 'posts#index'
  get 'posts/:id' => 'posts#show', as: :post
  get 'posts/new' => 'posts#new', as: :new_post
  get 'users' => 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
