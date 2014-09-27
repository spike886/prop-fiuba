class UserSerializer < ActiveModel::Serializer
  attributes :email, :name, :phone
end
