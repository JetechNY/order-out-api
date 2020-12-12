class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :restaurant_id
  # has_one :user
  # has_one :restaurant
end
