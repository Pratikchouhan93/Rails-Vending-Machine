
module CartsHelper
  
  @@total = 0
  def self.price_by_qty(id, price)
    qty = Cart.find_by_item_id(id).quantity
    @@total += price * qty
    price * qty
  end

  def self.total_price
    @@total
  end
end
