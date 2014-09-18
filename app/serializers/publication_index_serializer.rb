class PublicationIndexSerializer < ActiveModel::Serializer
  attributes :id, :address, :price_with_currency, :highlight
  has_one :location

  def address
    object.property.address
  end
end
