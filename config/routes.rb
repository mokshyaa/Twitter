Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: "users/sessions"} 
  root to: "homes#index"
  get 'users/show'
  resources :tweets, :relationships
end
