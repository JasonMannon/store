class ProductsController < ApplicationController
  def index 
  	@products = Product.all
  end

  def new
  	@product = Product.new
  end

  def show
  	@prodcut = Product.find(params[:id])
  end

  def create
  	@product = Product.new(product_params)
  	if @product.save
  		redirect_to root_url, notice: "Product added"
  	else
  		render "new"
  	end
  end

  private
  def product_params
  	params.require(:product).permit(:name, :description, :price, :admin_id)
  end
end