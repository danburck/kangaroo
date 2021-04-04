Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :bartenders, only: [:index, :show]
    end
  end

  resources :bartenders do
    resources :cocktails, only: [:create]
    resources :bookings, only: [:create]
  end

  resources :cocktails, only: [:edit, :update, :destroy]
  resources :bookings, only: [:show, :index, :destroy]
end
