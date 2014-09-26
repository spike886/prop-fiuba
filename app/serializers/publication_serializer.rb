class PublicationSerializer < ActiveModel::Serializer
  attributes :id, :price_with_currency, :highlight, :operation_type
  has_one :property, include: true
  has_one :user, embed: :ids
end
