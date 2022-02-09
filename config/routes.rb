Rails.application.routes.draw do
  resources :offers do
    resources :bookings, only: [:create]
    resources :reviews, only: %i[create update destroy]
  end

  resources :bookings, only: %i[show edit update destroy]
  # Do we need the show function since we are including all that in the "Overview" ?

  devise_for :users
  root to: 'pages#home'
  get '/my_overview', to: 'offers#overview', as: 'overview'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
