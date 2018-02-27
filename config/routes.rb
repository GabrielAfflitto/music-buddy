Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]

  root 'welcome#index'
  get '/search', to: 'search#index'
  get '/lyrics', to: 'lyrics#show'
  get '/artist', to: 'artist#show'
end
