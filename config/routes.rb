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

  resources :users
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :trips do
    member do
      get '/details', to: 'trips#details'
    end
  end

  # ###### #
  # Guides #
  # ###### #

  resources :guides
  get '/my_guides', to: 'guides#user'

  # ####### #
  # Creator #
  # ####### #

  resources :points,              only: [:destroy, :create]
  resources :paths,               only: [:destroy, :create]

  resources :creators,             only: [:index, :edit]

end
