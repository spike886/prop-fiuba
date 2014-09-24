class CharacteristicInstanceSerializer < ActiveModel::Serializer
  attributes :id, :name, :value, :characteristic_type
end
