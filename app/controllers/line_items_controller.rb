class LineItemsController < ApplicationController
  
  def create
    # binding.pry
    chosen_product = Product.find(params[:product_id])
    current_cart = current_user.card

    if current_cart.line_items.pluck(:product_id).include?(chosen_product.id)
      @line_item = current_cart.line_items.find_by(:product_id => chosen_product)
      @line_item.quantity += 1
    else
      @line_item = LineItem.new
      @line_item.card = current_cart
      @line_item.product = chosen_product
    end

    @line_item.save
    redirect_to current_cart
  end

  def index
    @line_items=Product.find(params[card_id])
  end

  def destroy
    # binding.pry
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to cards_path(@current_cart)
  end 

  def add_quantity
    # binding.pry
    @line_item = LineItem.find(params[:id])
    @line_item.quantity += 1
    @line_item.save
    redirect_to  cart_path(@current_cart)
  end
  
  def reduce_quantity
    # binding.pry
    @line_item = LineItem.find(params[:id])
    if @line_item.quantity > 1
      @line_item.quantity -= 1
    end
    @line_item.save
    redirect_to new_card_path(@current_cart)
  end

  def line_item_params
   params.require(:line_item).permit(:quantity,:product_id, :cart_id)
  end
end
