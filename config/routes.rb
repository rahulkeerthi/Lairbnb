Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: :show
  resources :lairs do
    resources :bookings, except: [:index, :new, :edit, :update]
  end
end
