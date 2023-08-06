Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root to: 'welcome#index'
  resources :apartments
  get  :last_day, to: 'apartments#last_day'
end
