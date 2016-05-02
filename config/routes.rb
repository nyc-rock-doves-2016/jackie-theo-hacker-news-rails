Rails.application.routes.draw do
  resources :users do
    resources :posts
    resources :comments
  end

  resources :posts do
    resources :comments
  end

  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "sign_up" => "users#new", :as => "sign_up"
  resources :sessions

 root 'index#index'
end
