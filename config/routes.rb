Rails.application.routes.draw do
  get 'photos/index'
  get 'photos/show'
  get 'photos/new'
  get 'photos/create'
  get 'photos/edit'
  get 'photos/update'
  get 'photos/destroy'
  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/create'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/destroy'
  devise_for :users
  root to: 'pages#home'

  resources :categories do
    resources :photos
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
