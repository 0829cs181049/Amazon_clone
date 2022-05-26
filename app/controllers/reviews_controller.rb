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
    @product = Product.find(params[:product_id])
    @review = @product.reviews.create(review_params)
    redirect_to @product
  end
  
  
  def destroy
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])
    @review.destroy
    redirect_to product_path(@product), status: 303
  end

  private
  def review_params
    params.require(:review).permit(:body, :user_id)
  end
end
