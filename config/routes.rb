Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'welcome#index'

  resources :sale_apartments
  resources :rent_apartments
  resources :daily_apartments
end
