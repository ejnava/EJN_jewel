class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :quantity
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  attr_accessible :cart, :product
  
  def total_price
    product.price * quantity
  end
end
