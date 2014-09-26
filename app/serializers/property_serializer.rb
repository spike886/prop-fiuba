class PropertySerializer < ActiveModel::Serializer
  attributes :address, :description, :longitude, :latitude
  has_many :characteristic_instances, serializer: CharacteristicInstanceSerializer
  has_many :images
  has_many :videos
  has_one :property_type
  has_one :location
end
