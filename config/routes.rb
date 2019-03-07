Sequent::Engine.routes.draw do
  resources :events, only: [:index, :show]
  resources :commands, only: [:index, :show]
end
