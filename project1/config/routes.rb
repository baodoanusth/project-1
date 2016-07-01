Rails.application.routes.draw do
  resources :categories do
    resources :words
  end
end
