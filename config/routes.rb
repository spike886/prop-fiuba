Rails.application.routes.draw do
  devise_for :users
  resources :users
  HighVoltage.configure do |config|
    config.route_drawer = HighVoltage::RouteDrawers::Root
  end
end
