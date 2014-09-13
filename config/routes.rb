Rails.application.routes.draw do

  devise_for :admins
  authenticate :admin do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end

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

  get "/translate", to: redirect("http://stark-cliffs-2158.herokuapp.com/projects/1")
end
