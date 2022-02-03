Rails.application.routes.draw do
  resources :offers do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show, :edit, :update, :destroy]
  # Do we need the show function since we are including all that in the "Overview" ?

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
