Rails.application.routes.draw do
  
  
  root to: 'events#index'

  get 'static_pages/index'
  devise_for :users
  resources :users, only: [:show, :update, :edit]
  
  resources :events do 
    resources :attendances, only: [:create, :destroy]
    resources :orders, only: [:new, :create]
  end

end
