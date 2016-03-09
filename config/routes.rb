Rails.application.routes.draw do
  root 'welcome#index'

  resources :users
  resources :messages

  get '/register' => 'users#new'
  get '/login' => 'sessions#new'
  post '/register' => 'users#create'
  post '/received' => 'messages#index'


end
