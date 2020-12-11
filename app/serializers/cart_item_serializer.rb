class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity
  has_one :cart
  has_one :menu_item
end
