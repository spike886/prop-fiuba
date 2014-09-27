module Prop
  # api to manage publications
  class Users < Base
    include Grape::Kaminari
    PAGE_SIZE = 30

    resources :users do
      # Get /users/:id
      desc "Get user data"
      params do
        requires :id, type: Integer, desc: "User id"
      end
      route_param :id do
        get do
          User.find(params[:id])
        end
      end
    end
  end
end