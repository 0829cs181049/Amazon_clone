class ProductsController < ApplicationController
    def index
      # binding.pry
      @products= Product.all
    end
  
    def show
    #  binding.pry
      @product = Product.find(params[:id])
    end
  
    def new
      # binding.pry
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
      @product = Product.find(params[:id])
      @product.destroy
      redirect_to root_path, status: :see_other
    end
    private
    def product_params
      params.require(:product).permit(:name, :description, :picture, :price)
    end
end