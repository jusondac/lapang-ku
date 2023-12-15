Rails.application.routes.draw do
  resources :memberships
  resources :type_memberships
  resources :fields
  resources :field_types
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
