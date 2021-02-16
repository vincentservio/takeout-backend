Rails.application.routes.draw do
  resources :takeouts
  root :to => "takeout#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
