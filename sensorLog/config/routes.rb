Rails.application.routes.draw do
  get 'sensors/index'

  resources :sensors
  
  root 'sensors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
