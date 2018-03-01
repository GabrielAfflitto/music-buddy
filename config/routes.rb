Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]

  root 'welcome#index'
  get '/search', to: 'search#index'
  get '/lyrics', to: 'lyrics#show'
  get '/artist', to: 'artist#show'
  get '/dashboard', to: 'users#show'

  resources :users, only: [:show] do
    resources :favorites, only: [:index, :create, :destroy]
  end
end
