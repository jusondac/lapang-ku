Rails.application.routes.draw do
  resources :order_details
  resources :payments
  resources :orders
  resources :rent_details
  resources :rents
  resources :rent_memberships
  resources :memberships do
    collection do
      get :membership_pdf
    end
  end
  resources :type_memberships
  resources :fields
  resources :field_types
  get "home/index"
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
