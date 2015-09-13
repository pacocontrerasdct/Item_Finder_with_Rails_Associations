class ItemsController < ApplicationController

  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.new(item_params)
    if item.save
      flash[:notice] = 'Item created successfully!'
      redirect_to item
    else
      flash.now[:error] = "Error: #{item.errors.full_messages}"
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      flash[:notice] = 'Item updated successfully!'
      redirect_to item
    else
      flash.now[:error] = "Error: #{item.errors.full_messages}"
      render :new
    end
  end

  def destroy
    item = Item.find(params[:id]).destroy
    if item
      flash[:notice] = 'Item deleted successfully!'
      redirect_to :items
    else
      flash.now[:error] = "Error: #{item.errors.full_messages}"
      render :edit
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :brand, :price, :size)
  end

end
