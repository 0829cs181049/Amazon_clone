# frozen_string_literal: true

# gjklj
module Lineitem
  extend ActiveSupport::Concern

  def condition(**kwargs)
    # byebug
    current_cart = kwargs[:current_cart]
    chosen_product = kwargs[:chosen_product]
    # byebug
    if current_cart.line_items.pluck(:product_id).include?(chosen_product.id)
      @line_item = current_cart.line_items.find_by(product_id: chosen_product)
    else
      @line_item = LineItem.new
      @line_item.card = current_cart
      @line_item.product = chosen_product
      @line_item
    end
  end
end
