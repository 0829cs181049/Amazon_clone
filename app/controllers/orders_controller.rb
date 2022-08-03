# frozen_string_literal: true

# ddfgdk
class OrdersController < ApplicationController
  def index
    # byebug
    @orders = Order.all
    # OrderDoneJob.new.perform(user:current_user.id)
  end

  def myorder
    @orders = Order.all
    OrderDoneJob.new.perform(user: current_user.id)
  end

  def new
    @order = Order.new
  end

  # def show
  # end

  def create
    #  binding.pry
    @order = Order.create(user_id: current_user.id)
    current_user.card.line_items.each do |item|
      @order_item = OrderItem.new
      @order_item.order_id = @order.id
      @order_item.product_id = item.product.id
      @order_item.save
      item.destroy
      # OrderMailer.with(user: current_user).new_order_email.deliver_later
      # OrderDoneJob.(user: current_user).perform_later
      # OrderMailer.set(wait: 1.minute).de_later
      # OrderDoneJob.new.perform(user:current_user.id)
    end
    redirect_to @order
  end
  private

  def order_params
    params.require(:order).permit(:phone_number, :address, :pincode)
  end
end
