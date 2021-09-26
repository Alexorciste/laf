Rails.application.routes.draw do
  
  get 'privatepics/index'
  get 'privatepics/show'
  get 'privatepics/new'
  get 'privatepics/create'
  get 'privatepics/update'
  get 'privatepics/edit'
  get 'privatepics/destroy'
  get 'privatecats/index'
  get 'privatecats/show'
  get 'privatecats/new'
  get 'privatecats/create'
  get 'privatecats/update'
  get 'privatecats/edit'
  get 'privatecats/destroy'
  devise_for :users
  root to: 'categories#index'

  resources :categories do
    resources :photos
  end

  resources :privatecat do
    resources :privatepic
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
