Rails.application.routes.draw do
  mount Sequent::Rails::Engine => "/sequent-rails"
end
