Rails.application.routes.draw do
  resources :stories
  root 'stories#index'
  resources :users, only: %i[new create show]
  resources :sessions, only: %i[new create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
