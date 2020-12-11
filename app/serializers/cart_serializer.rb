class CartSerializer < ActiveModel::Serializer
  attributes :id, :note, :totalcost, :checkout
  has_one :user
  has_many :cart_items
end
