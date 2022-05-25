class ReviewsController < ApplicationController
 
  # def index 
  #   @reviews = @product.reviews
  #   @product = Product.find(params[:product_id])
  # end

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_path(@product)
    end
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.create(review_params)
    redirect_to product_path(@product)
  end
  
  
  def destroy
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])
    @review.destroy
    redirect_to product_path(@product), status: 303
  end

  private
  def review_params
    params.require(:review).permit(:body)
  end
end
