Rails.application.routes.draw do

  devise_for :users
  root to: 'categories#index'

  resources :categories do
    resources :photos
  end

  resources :privatecats do
  end

end
