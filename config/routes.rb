Rails.application.routes.draw do
  get 'messages/create'
  get 'login', to: 'session#login'
  post 'login', to: 'session#create'
  post 'messages', to: 'messages#create'
  delete 'logout', to: 'session#destroy'
  mount ActionCable.server, at: '/cable'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
