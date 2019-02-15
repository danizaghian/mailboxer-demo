Rails.application.routes.draw do
	root to: "users#new"
  resources :users
	resources :conversations do
	  resources :messages
	end
  get "/signup" => "users#new"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
