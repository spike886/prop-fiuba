class PublicationSerializer < ActiveModel::Serializer
  attributes :id, :price_with_currency, :highlight
  has_one :property, include: true
  has_one :user, embed: :ids
end
