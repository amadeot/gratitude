Rails.application.routes.draw do
  root 'welcome#index'

  resources :users

  get '/register' => 'users#new'
  get '/login' => 'sessions#new'
  post '/register' => 'users#create'
  post '/received' => 'messages#create'


end
