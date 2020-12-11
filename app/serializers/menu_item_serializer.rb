class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :img
  has_one :restaurant
end
