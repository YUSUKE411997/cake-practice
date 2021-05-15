class Admins::ItemsController < ApplicationController

  def new
    @item = Item.new
    @genres = Genre.all
  end

  def create
    @item = Item.new(params_item)
    @item.save
    redirect_to admins_items_path
  end

  def index
    @items = Item.all
  end

  private

  def params_item
    params.require(:item).permit(:item_name, :caption, :price, :genre_id, :is_active)
  end

end
