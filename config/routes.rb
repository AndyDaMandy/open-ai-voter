Rails.application.routes.draw do
  resources :chats
  get 'pages/index'
  get 'pages/test'
  get 'pages/search'
  root 'pages#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
