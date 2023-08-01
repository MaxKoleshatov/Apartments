Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root to: 'welcome#index'

  resources :sale_apartments
  resources :rent_apartments
  resources :daily_apartments

  get  :last_day_sale, to: 'sale_apartments#last_day_sale'
  get  :last_day_rent, to: 'rent_apartments#last_day_rent'
  get  :last_day_daily, to: 'daily_apartments#last_day_daily'
end
