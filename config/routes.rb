Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'categories#index'
  resources :users, only: %i[new create ]
  resources :articles, only: %i[new create show]
  resources :categories, only: %i[new create show index]
  resources :votes, only: %i[new create]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
