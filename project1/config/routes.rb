Rails.application.routes.draw do
  resources :categories
  get 'signup'  => 'users#new' 
  resources :users
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
