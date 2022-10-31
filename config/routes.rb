Rails.application.routes.draw do
  resources :librarybooks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "librarybooks#index"
end
