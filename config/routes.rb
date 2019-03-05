Sequent::Engine.routes.draw do
  resources :events, only: [:index]
end
