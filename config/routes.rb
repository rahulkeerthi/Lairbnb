Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, except: [:index, :destroy]
  resources :lairs
  resources :bookings, except: [:index, :new, :edit, :update]
end
