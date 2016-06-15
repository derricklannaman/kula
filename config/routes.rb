Rails.application.routes.draw do
  devise_for :users

  root 'pages#index'

  get 'destinations', to: 'destinations#index'
  get 'discover/jamaica', to: 'destinations#jamaica'
  get 'discover/cuba', to: 'destinations#cuba'
  get 'discover/brazil', to: 'destinations#brazil'

  resources :dinners

  get 'admin_dashboard', to: 'admin#dashboard'

  get 'menus', to: 'menus#index'
end
