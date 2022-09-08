class CartsController < ApplicationController

  def index
    @item_arr = Cart.where(user_id: current_user.id)
    @cart_items = Item.where(id: (@item_arr.map { |a| a.item_id }))
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def new
    @cart = Cart.new
  end
  
  def create
    @user = User.find(current_user.id)
    @cart = @user.cart.create(cart_params)

    redirect_to root_path, notice: "Item added into cart Successfully."
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def cart_params
    params.require(:cart).permit(:item_id, :quantity)
  end
end
