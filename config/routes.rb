Rails.application.routes.draw do
  get 'home' => 'posts#index'
  get 'users' => 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 
