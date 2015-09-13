class ShopsController < ApplicationController

  def index
    @shops = Shop.all.order('name ASC')
  end

  def new
    @shop = Shop.new
  end

  def create
    shop = Shop.new(shop_params)
    if shop.save
      flash[:notice] = 'New shop created successfully!'
      redirect_to shop
    else
      flash.now[:error] = "Error: #{shop.errors.full_messages}"
      render :new
    end
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    shop = Shop.find(params[:id])
    if shop.update(shop_params)
      flash[:notice] = 'Shop details were updated successfully'
      redirect_to shop
    else
      flash.now[:error] = "Error: #{shop.errors.full_messages}" 
      render :edit
    end
  end

  def destroy
    shop = Shop.find(params[:id]).destroy
    if shop
      flash[:notice] = 'Shop details were deleted successfully'
      redirect_to :shops
    else
      flas.now[:error] = "Error: #{shop.errors.full_messages}"
      render :edit
    end
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :post_code, :opening_hours)
  end




end
