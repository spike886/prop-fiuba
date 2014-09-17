module Prop
  # api to manage publications
  class PropertyTypes < Base
    PAGE_SIZE = 30

    resources :property_types do
      # GET /property_types
      desc "Returns all the property types"
      get do
        PropertyType.all
      end

      # Get /property_types/:id/characteristics
      desc "return the characteristics of the publication type"
      params do
        requires :id, type: Integer, desc: "Property type id"
      end
      route_param :id do
        get :characteristics do
          PropertyType.find(params[:id]).characteristics
        end
      end
    end
  end
end