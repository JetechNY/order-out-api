class CartSerializer < ActiveModel::Serializer
  attributes :id, :note, :totalcost, :checkout, :user_id
  # has_one :user
  has_many :cart_items
end
