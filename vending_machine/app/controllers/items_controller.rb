# app/controllers/items_controller.rb

class ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @items = Item.order(price: :asc,quantity: :asc)      
    # @q = Item.ransack(params[:q])
    # @items = @q.result

    # @items = Item.search('name').records
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end
  
  def create
    @user = User.find(current_user.id)
    @item = @user.items.create(item_params)

    redirect_to root_path, notice: "#{@item.name} Added Successfully."
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to root_path, notice: "#{@item.name} Updated Successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :quantity)
  end

end
