# frozen_string_literal: true

# knfkj
class ReviewsController < ApplicationController
  # def index
  #   @reviews = @product.reviews
  #   @product = Product.find(params[:product_id])
  # end

  # def new
  #   binding.pry
  #   @product = Product.find(params[:product_id])
  #   @review = @product.reviews.new(review_params)
  # end

  def create
    # byebug
    @product = Product.find(params[:product_id])
    @review = @product.reviews.create(review_params)
    redirect_to @product
  end

  private

  def review_params
    params.require(:review).permit(:body, :user_id)
  end
end
