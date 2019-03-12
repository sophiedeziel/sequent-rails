Sequent::Engine.routes.draw do
  resources :events, only: [:index, :show]
  resources :commands, only: [:show]
  resources :streams, only: [:index, :show] do
    resources :events, only: [:index]
  end
end
