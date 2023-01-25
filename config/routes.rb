Rails.application.routes.draw do
  
  
  root "events#index"
  resources :events do

    resources :registrations
end
resource :session, only: [:new, :create, :destroy]
resources :users
get "signup" => "users#new"
  # For details on the DSL availab
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
