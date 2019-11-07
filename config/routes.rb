Rails.application.routes.draw do
  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/create'
  # get 'cocktails/new'
  resources :cocktails, only: [:new, :show, :create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
