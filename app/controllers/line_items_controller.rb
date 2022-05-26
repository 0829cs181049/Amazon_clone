class LineItemsController < ApplicationController

def create
  # binding.pry
   @linw_item = Product.find(params[:product_id])
end

def destroy
  @line_item = Line_item.find(params[:id])
  @line_item.destroy
end 

def line_item_params
  params.require(:line_item).permit(:product_id, :cart_id)
end

end

