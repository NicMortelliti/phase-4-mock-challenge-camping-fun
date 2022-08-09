Rails.application.routes.draw do
  resources :activities, only: [:index, :show, :destroy]
  resources :signups, only: [:destroy]
  resources :campers
  # get '/campers/:id', to: 'campers#show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
