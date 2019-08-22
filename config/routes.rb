Rails.application.routes.draw do
  
  get 'static_pages/index'
  get 'static_pages/secret'
  root 'static_pages#index'

  resources :events
  post '/events', to:'events#create'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :attendances
  resources :charges
end


