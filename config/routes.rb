Rails.application.routes.draw do
  root 'home#index'
  get 'destinations', to: 'destinations#index'
  get 'discover/jamaica', to: 'destinations#jamaica'
  get 'discover/cuba', to: 'destinations#jamaica'
  get 'discover/brazil', to: 'destinations#jamaica'
end
