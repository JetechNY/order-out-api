class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :username, :password, :email, :phone
end
