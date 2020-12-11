class CartSerializer < ActiveModel::Serializer
  attributes :id, :note, :totalcost, :checkout
  has_one :user
end
