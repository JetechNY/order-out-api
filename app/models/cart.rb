class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items
  has_many :menu_items, through: :cart_items

  def totalcost
    sum=0
    self.cart_items.each{|item| sum+=item.price.to_f}
    return sum.to_f
  end

end
