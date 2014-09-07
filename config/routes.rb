Rails.application.routes.draw do

  devise_for :users
  authenticate :user do
    resources :users
    resources :publications
    resources :properties
  end
  HighVoltage.configure do |config|
    config.route_drawer = HighVoltage::RouteDrawers::Root
  end

  namespace :api do
    resources :publications, only: [:index, :show]
  end
end
