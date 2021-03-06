class CardsController < ApplicationController

  def index
    # binding.pry
    # @card_items = current_user.card.line_items
    # @card = @current_cart<table>
    @card = current_user.card
  end

  def destroy
    @card = @current_cart.card
    @card.destroy
    session[:card_id] = nil
    redirect_to root_path
  end
   
  private 

  def card_params
     params.require(:card).permit(:user_id)
  end
end