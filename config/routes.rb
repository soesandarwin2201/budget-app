Rails.application.routes.draw do
  get 'category_details/index'
  # get 'categories/index'
  root 'users#index'
  devise_for :users
  resources :categories, only: [:index, :show, :new, :create, :destroy] do 
    resources :category_details, only: [:new, :create]
  end
end
