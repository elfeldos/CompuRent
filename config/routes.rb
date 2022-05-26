Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'components', to: 'pages#components'
  get 'profile', to: 'pages#profile'
  get 'how', to: 'pages#how', as: :howitworks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # actual routes
  resources :computers do
    resources :bookings, only: [:new, :create]
  end
  get '/', to: 'pages#home'
end
