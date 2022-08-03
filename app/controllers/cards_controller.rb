# frozen_string_literal: true

# tnmsdgf
class CardsController < ApplicationController
  def index
    # binding.pry
    @card = current_user.card
  end

  # def create_cart
  #   binding.pry
  #   Card.create(user_id: current_user.id)
  # end

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
