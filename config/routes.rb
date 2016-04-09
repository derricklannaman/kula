Rails.application.routes.draw do

  root 'home#index'
  get 'destinations', to: 'destinations#index'
end
