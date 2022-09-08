
module CartsHelper
  def total_price(id, price)
    qty = Cart.find_by_item_id(id).quantity
    price + qty
  end
end
