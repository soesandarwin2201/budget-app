Rails.application.routes.draw do
  get 'category_details/index'
  # get 'categories/index'
  root 'users#index'
  devise_for :users
  resources :categories, only: [:index, :new, :create]
end
