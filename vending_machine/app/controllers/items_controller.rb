# app/controllers/items_controller.rb

class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

<<<<<<< Updated upstream
=======
  def create
    @user = User.find(current_user.id)
    @item = @user.items.create(item_params)

    redirect_to root_path, notice: "#{@item.name} Added Successfully."
  end

>>>>>>> Stashed changes
  def edit
    @item = Item.find(params[:id])
  end

<<<<<<< Updated upstream
=======
  def update
    @item = Item.find(params[:id])

    if @item.update!(item_params)
      redirect_to root_path, notice: "#{@item.name} Updated Successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

>>>>>>> Stashed changes
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to root_path, status: :see_other
  end

end
