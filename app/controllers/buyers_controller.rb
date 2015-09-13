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
      redirect_to buyer
    else
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
    buyer = Buyer.new(buyer_params) 
    if buyer.save
      redirect_to buyer
    else
      render :new
    end
  end

  def destroy
    buyer = Buyer.find(params[:id]).destroy
    if buyer
      redirect_to '/buyers'
    else
      render :edit
    end
  end


  ##def login
  ##  # Want to check if buyer is in DB
  ##  name = params[:buyer][:name]
  ##  # Finding buyer name in DB
  ##  @buyers = Buyer.find_by(name: name)
  ##  
  ##  if @buyers
  ##    render :show
  ##  else
  ##    render :index
  ##  end
  ##end


  private
  def buyer_params
    params.require(:buyer).permit(:name, :post_code, :genre, :age)
  end

end
