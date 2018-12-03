Rails.application.routes.draw do
  get 'welcome/home'

  get 'sessions/new'

  get 'users/new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :users, only: [:new, :create]

  root 'welcome#home'
  resources :charities, only: [:index, :show, :new]
  resources :purchases, only: [:index, :show, :new]
  resources :investments, only: [:index, :show, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
