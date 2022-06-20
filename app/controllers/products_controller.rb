class ProductsController < ApplicationController
  def index
    @bg_blue = false
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
