class CartsController < ApplicationController

  def index
   @carts = Cart.where(user_id: current_user.id)
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def new
    @cart = Cart.new
  end
  
  def create
    @user = User.find(current_user.id)
    @cart = @user.cart.new(cart_params)

    redirect_to root_path, notice: "Item added into cart Successfully."
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def cart_params
    params.require(:cart).permit(:quantity)
  end
end
