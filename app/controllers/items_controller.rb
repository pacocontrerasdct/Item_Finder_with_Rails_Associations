class ItemsController < ApplicationController

  def index
    @message = 'index!'
    @items = Item.all.order('created_at DESC')
  end

  def show
    @message = 'show!'
  end

  def new
    @message = 'new'
    @item = Item.new
  end

  def create
    item = Item.new(item_params)
    if item.save
      flash[:notice] = 'Item created successfully!'
      redirect_to '/items'
    else
      flash.now[:error] = "Error: #{article.errors.full_messages}"
      render :new
    end
  end

  def edit
    @message = 'edit!'
  end

  def destroy
    @message = 'destroy!'
  end


  private
  def item_params
    params.require(:item).permit(:name, :brand, :price, :size)
  end




end
