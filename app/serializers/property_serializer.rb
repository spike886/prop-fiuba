class PropertySerializer < ActiveModel::Serializer
  attributes :address
  has_many :characteristic_instances
  has_many :images
  has_many :videos
  has_one :property_type
  has_one :location
end
