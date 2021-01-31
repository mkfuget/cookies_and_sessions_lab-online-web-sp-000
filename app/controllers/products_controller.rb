class ProductsController < ApplicationController

  def index
    @cart = session[:cart] || []
    puts @cart
  end
  def add
    @item = Item.find(params[:id])
    cart = session[:cart] || []
    cart << @item.id
    session[:cart] = cart
  end
end
