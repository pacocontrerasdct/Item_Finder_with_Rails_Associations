class BuyersController < ApplicationController

  def index
    @buyers = Buyer.all.order('created_at DESC')
  end

  





end
