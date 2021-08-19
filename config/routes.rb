Rails.application.routes.draw do
  resources :acessorios
  resources :calcados
  resources :roupas
  root to: "roupas#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
