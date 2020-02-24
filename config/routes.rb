Rails.application.routes.draw do
  get 'lairs/show'
  get 'lairs/new'
  get 'lairs/create'
  get 'lairs/edit'
  get 'lairs/update'
  get 'lairs/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :users, except: [:index, :destroy]
  resources :lairs
  resources :bookings, except: [:index, :new, :edit, :update]
end
