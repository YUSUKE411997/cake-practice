class Customers::ItemsController < ApplicationController

  def index
    @items = Item.all
  end
  
  def show
    @item = Item.find(params[:id])
    @total_price = (@item.price * 1.1).to_i
    
  end 

end
