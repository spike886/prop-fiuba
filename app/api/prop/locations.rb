module Prop
  # api to manage publications
  class Locations < Base
    PAGE_SIZE = 30

    resources :locations do
      # GET /locations
      desc "Returns all the locations"
      get do
        Location.all
      end

      # Get /locations/:id/nearby
      desc "return the nearby locations"
      params do
        requires :id, type: Integer, desc: "Location id"
      end
      route_param :id do
        get :nearby do
          Location.all
        end
      end
    end
  end
end