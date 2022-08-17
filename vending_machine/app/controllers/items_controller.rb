
class ItemsController < ApplicationController

  def index
    @item = Items.all
  end

  def show
    @item = Items.find(params[:id])
  end

  def new
    @item = Items.new
  end

  # def create
  #   @item = Items.new(item_params)

  #   if @item.save
  #     redirect_to @item
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  def edit
    @items = Items.find(params[:id])
  end

  # def update
  #   @item = Items.find(params[:id])

  #   if @item.update(article_params)
  #     redirect_to @item
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  def destroy
    @item = Items.find(params[:id])
    @item.destroy

    redirect_to root_path, status: :see_other
  end

end
