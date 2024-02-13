Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :contact_form, only: %i[new create]

  post "/contact_form" => "contact_form#create"
end
