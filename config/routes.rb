Rails.application.routes.draw do
  get 'bookings/create'
  get 'bookings/show'
  get 'bookings/destroy'
  devise_for :users
  root 'pages#home'

  resources :bartenders do
    resources :cocktails, only: [:create]
    resources :bookings, only: [:create]
  end

  resources :cocktails, only: [:edit, :update, :destroy]
  resources :bookings, only: [:show, :index, :destroy]
end
