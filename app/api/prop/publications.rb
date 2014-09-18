module Prop
  # api to manage publications
  class Publications < Base
    PAGE_SIZE = 30

    resources :publications do
      # GET /publications
      desc "Returns all the publications info"
      paginate per_page: PAGE_SIZE
      get "", each_serializer: PublicationIndexSerializer do
        paginate Publication
      end

      # Get /publications/:id
      desc "return the given publication info"
      params do
        requires :id, type: Integer, desc: "Publication id"
      end
      route_param :id do
        get do
          Publication.find(params[:id])
        end
      end
    end
  end
end