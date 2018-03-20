Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get 'pages/directions'

  resources :articles do
    resources :comments
  end
  resources :users
  # get 'welcome/index'

  # match ':controller(/:action(/:id))', :via => :get

  root 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
