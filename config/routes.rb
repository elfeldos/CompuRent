Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  devise_for :users
  root to: 'pages#home'
  get 'components', to: 'pages#components'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # actual routes
  resources :bookings, only: [:new, :create]
  resources :computers
  get '/', to: 'pages#home'
end
