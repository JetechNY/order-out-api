class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :img, :restaurant_id
  # has_one :restaurant
  has_many :cart_items
end
