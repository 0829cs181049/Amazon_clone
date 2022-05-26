class CardsController < ApplicationController

  def show
    binding.pry
    @cart = @current_cart
  end
    
  def destroy
    @cart = @current_cart
    @cart.destroy
    session[:cart_id] = nil
    redirect_to root_path
  end
   
   private 
  def cart_params
     params.require(:cart).permit(:user_id)
  end
end
