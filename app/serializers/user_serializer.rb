class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :address, :username, :password, :phone
  has_many :carts
  # has_many :favorites
  has_many :restaurants




  
end
