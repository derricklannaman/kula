Rails.application.routes.draw do
  root 'pages#index'

  get 'destinations', to: 'destinations#index'
  get 'discover/jamaica', to: 'destinations#jamaica'
  get 'discover/cuba', to: 'destinations#cuba'
  get 'discover/brazil', to: 'destinations#brazil'


  get 'menus', to: 'menus#index'
end
