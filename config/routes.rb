Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'

  resources :users, only: [:show] do
    resources :cocktails, only: [:create]
  end

  resources :cocktails, only: [:edit, :update]
end
