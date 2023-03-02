Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/login", to: "SessionsController#create"
  post "/logout", to: "SessionsController#destroy"

end
