Rails.application.routes.draw do

  get 'trips/new'
  get 'trips/edit'

  root 'static_pages#home'

  get 'sessions/new'

  get '/home',    to:   'static_pages#home'
  get '/help',    to:   'static_pages#help'
  get '/about',   to:   'static_pages#about'
  get '/contact', to:   'static_pages#contact'

  get '/signup',    to:  'users#new'
  post '/signup',   to:  'users#create'

  post '/creator',  to:  'users#creator'
  post '/admin',    to:  'users#admin'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  post   '/points',  to: 'creator#create'

  resources :users
  resources :trips
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :creator,             only: [:index, :edit]

end
