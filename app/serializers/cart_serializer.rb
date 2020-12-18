class CartSerializer < ActiveModel::Serializer
  attributes :id, :note, :checkout, :user_id
  # has_one :user
  has_many :cart_items
  has_many :menu_items
end
