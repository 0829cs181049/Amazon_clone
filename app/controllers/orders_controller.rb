class OrdersController < ApplicationController
  def index
    @card = current_user.card
  end

  def show
    @card = current_user.card
  end
  
end