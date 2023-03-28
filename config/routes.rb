Rails.application.routes.draw do
  get 'category_details/index'
  get 'categories/index'
  root 'users#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users
end
