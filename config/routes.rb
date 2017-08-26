Rails.application.routes.draw do
  resources :users
  resources :cars
  resources :cities
  resources :groups
  resources :team_soccers
  resources :animals
  resources :toys
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
