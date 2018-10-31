Rails.application.routes.draw do
  root 'acta#index'

  get "pruba/:id", to: "acta#prueba", as: "pruba"

  get "acta_pdf/:id", to: "acta#acta_pdf", as: "acta_pdf"
  
  resources :tools
  resources :acta
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
