Rails.application.routes.draw do
  devise_for :users
  root 'splash#index'
  # get 'users/index'
  resources :categories, only: [:index, :show, :new, :create, :destroy] do 
    resources :category_details, only: [:new, :create]
  end
end
