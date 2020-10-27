Rails.application.routes.draw do
  devise_for :users
  root to: 'top#show'
  get 'rooms/show'
  
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
