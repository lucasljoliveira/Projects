Rails.application.routes.draw do
  resources :pacientes
  get 'home/index'
  
  root 'home#index'
  resources :telefones
  resources :enderecos
  resources :funcionarios
  resources :pessoas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
