class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :url, :display_phone, :categories, :rating, :location, :photos, :price
end
