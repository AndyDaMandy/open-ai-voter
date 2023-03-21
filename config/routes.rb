Rails.application.routes.draw do
  resources :chats, except: [:edit, :destroy] do
    resources :comments
  end
  get 'pages/index'
  get 'pages/test'
  get 'pages/search'
  root 'chats#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
