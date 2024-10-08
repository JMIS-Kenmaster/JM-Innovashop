Rails.application.routes.draw do
  namespace :admin do
    resources :products
    resources :categories
  end
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   authenticated :admin do
    root to: "admin#index", as: :admin_root
  end
  
  get "admin" => "admin#index"

  root "home#index"
end