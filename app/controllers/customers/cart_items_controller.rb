class Customers::CartItemsController < ApplicationController

  def create
    @cart_item = current_customer.cart_items.new(cart_items_params)
    @cart_item.save
    redirect_to customers_cart_items_path
  end

  def index
    @cart_items = current_customer.cart_items
    @tax = 1.1
  end

  def update
    CartItem.find(params[:id]).update(cart_items_params)
    redirect_to customers_cart_items_path
  end

  def destroy
    CartItem.find(params[:id]).destroy
    redirect_to customers_cart_items_path
  end

  def destroy_all
    current_customer.cart_items.destroy_all
    redirect_to customers_items_path
  end

  private

  def cart_items_params
    params.require(:cart_item).permit(:quantity, :customer_id, :item_id)
  end

end
