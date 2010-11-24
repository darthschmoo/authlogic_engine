Jasna::Application.routes.draw do
  resource :account, :controller => "users"
  resources :users
  resources :user_sessions
  match "logout", :to => "user_sessions#destroy"
  match "login", :to => "user_sessions#new"
  match "signup", :to => "user#new"
end
