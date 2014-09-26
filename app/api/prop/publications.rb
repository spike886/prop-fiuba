module Prop
  # api to manage publications
  class Publications < Base
    include Grape::Kaminari
    PAGE_SIZE = 30

    resources :publications do
      # GET /publications
      desc "Returns all the publications info"
      params do
        optional :q, type: Hash, desc: "Do not use" do
          optional :price_gt, type: Integer, desc: "Price grater than"
          optional :price_lt, type: Integer, desc: "Price less than"
          optional :currency_eq, type: String, desc: "Currency type", values: Publication::CURRENCY
          optional :property_property_type_id_eq, type: Integer, desc: "Property Type Id"
          optional :user_id_eq, type: Integer, desc: "User Id"
          optional :operation_type_eq, type: String, desc: "Operation Types", values: Publication::OPERATION_TYPES
          optional :s, type: String, desc: "Order By", values: ["price asc", "price desc",
                                                                "start_date asc", "start_date desc",
                                                                "end_date asc", "end_date desc",
                                                                "property_property_type_name asc", "property_property_type_name desc",
                                                                "property_location_name asc", "property_location_name desc"]
        end
      end
      paginate per_page: PAGE_SIZE
      get "", each_serializer: PublicationIndexSerializer do
        paginate Publication.actives.search(params[:q]).result.sort_by_priority
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