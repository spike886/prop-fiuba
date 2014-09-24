Rails.application.routes.draw do

  devise_for :admins
  authenticate :admin do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end

  devise_for :users
  authenticate :user do
    resources :users
    resources :publications do
      resource :build, controller: 'publications/build'
    end
    resources :properties
  end
  HighVoltage.configure do |config|
    config.route_drawer = HighVoltage::RouteDrawers::Root
  end

  mount API => '/api/'

  get "/translate", to: redirect("http://stark-cliffs-2158.herokuapp.com/projects/1")
end
