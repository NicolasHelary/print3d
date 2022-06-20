class ProductsController < ApplicationController
  def index
    @bg_blue = false
    @products = Product.all
  end

  def show
    @bg_blue = false
    @product = Product.find(params[:id])
    @demand = Demand.new
  end
end
