class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity
  has_one :cart
  has_many :menu_items
end
