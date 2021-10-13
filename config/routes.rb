Rails.application.routes.draw do
  
 
  devise_for :users
  root to: 'categories#index'

  resources :categories do
    resources :photos
  end

  resources :privatecats 
   
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
