class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :address, :username, :password, :phone
end
