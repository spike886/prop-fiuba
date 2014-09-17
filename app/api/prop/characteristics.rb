module Prop
  # api to manage publications
  class Characteristics < Base
    PAGE_SIZE = 30

    resources :characteristics do
      # GET /characteristics
      desc "Returns all characteristics"
      get do
        Characteristic.all
      end
    end
  end
end