Rails.application.routes.draw do
  devise_for :users
  # root to: 'top#show'
  root 'rooms#index'

  resources :rooms, only: %i[show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
