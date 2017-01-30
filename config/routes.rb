Rails.application.routes.draw do
  
  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
  
  root :to => 'locations#index'
  resources :types
  resources :locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
