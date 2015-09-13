class BuyersController < ApplicationController

  def index
    @buyers = Buyer.all.order('created_at DESC')
  end

  def new
    @buyer = Buyer.new
  end

  def create
    buyer = Buyer.new(buyer_params)
    
    if buyer.save
      flash[:notice] = 'Buyer created successfully!'
      redirect_to buyer
    else
      flash.now[:error] = "Error: #{buyer.errors.full_messages}"
      render :new
    end
  end

  def show
    @buyer = Buyer.find(params[:id])
  end

  def edit
    @buyer = Buyer.find(params[:id])
  end

  def update
    buyer = Buyer.find(params[:id]) 
    if buyer.update(buyer_params)
      flash[:notice] = 'Buyer information updated successfully!'
      redirect_to buyer
    else
      flash.now[:error] = "Error: #{buyer.errors.full_messages}"
      render :new
    end
  end

  def destroy
    buyer = Buyer.find(params[:id]).destroy
    if buyer
      flash[:notice] = 'Buyer information deleted successfully!'
      redirect_to :buyers
    else
      flash.now[:error] = "Error: #{buyer.errors.full_messages}"
      render :edit
    end
  end
  
  private
  def buyer_params
    params.require(:buyer).permit(:name, :post_code, :genre, :age)
  end

end
