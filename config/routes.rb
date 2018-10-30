Rails.application.routes.draw do
  root 'tools#index'

  get "pruba/:id", to: "acta#prueba", as: "pruba"
  
  resources :tools
  resources :acta
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
