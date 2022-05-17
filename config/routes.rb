Rails.application.routes.draw do
  
  root to: 'events#index'

  get 'static_pages/index'
  devise_for :users
  
  resources :events do 
    resources :attendances
  end

end
