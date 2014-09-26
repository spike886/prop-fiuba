class PublicationIndexSerializer < ActiveModel::Serializer
  attributes :id, :address, :price_with_currency, :highlight, :operation_type
  has_one :location

  def address
    object.property.address
  end
end
