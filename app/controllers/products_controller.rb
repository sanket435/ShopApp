class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)
  	if @product.save
  		respond_to do |format|
  			format.js
  		end
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def show
  end

  private
  def product_params
  	params.require(:product).permit(:name, :category, :price)
  end
end
