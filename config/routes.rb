Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: :show
  get '/lairs/search/', to: 'lairs#search', as: 'search'
  resources :bookings, only: [:destroy]
  resources :lairs do
    resources :bookings, except: [:index, :new, :edit, :update, :destroy]
  end
end
