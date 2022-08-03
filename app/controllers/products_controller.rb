# frozen_string_literal: true

# lkgfj
class ProductsController < ApplicationController
  def index
   # @products = Product.all
    # byebug
    @q = Product.ransack(params[:q])
    @products = @q.result
    # redirect_to @product
  end

  # def search
  #   @q = Product.ransack(params[:q])
  #   @products = @q.result(distinct: true)
  # end
  
  def show
    # byebug
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.picture.attach(product_params[:picture])

    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    # binding.pry
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :picture, :price)
  end
end
