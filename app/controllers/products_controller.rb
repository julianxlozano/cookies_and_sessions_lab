class ProductsController < ApplicationController
    def index 
        @cart = session[:cart]
    end
    
    def add
          # Get the item from the path
  @item = params[:product]


 
  cart = session[:cart] || []
  cart << @item

  # Save the cart in the session.
  session[:cart] = cart
    end 
end
