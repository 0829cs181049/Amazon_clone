class CardsController < ApplicationController

  def index
    @card_items = current_user.card.line_items
    # @card = @current_cart
  end

  def show
    @cart = current_user.card
  end

  def destroy
    @card = @current_cart
    @card.destroy
    session[:card_id] = nil
    redirect_to root_path
  end
   
  private 

  def card_params
     params.require(:card).permit(:user_id)
  end
end
