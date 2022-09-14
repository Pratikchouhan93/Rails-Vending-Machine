
module CartsHelper
  
  def self.price_by_qty(id, price)
    qty = Cart.find_by_item_id(id).quantity
    price * qty
  end

end
