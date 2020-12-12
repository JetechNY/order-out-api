class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :cart_id, :menu_item_id
  # has_one :cart
  # has_one :menu_items
end
