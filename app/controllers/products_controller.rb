class ProductsController < ApplicationController
  def index
    @bg_blue = false
    if params[:query].present?
      sql_query = " \
        products.name ILIKE :query \
        OR products.description ILIKE :query \
      "
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      @products = Product.all
    end
  end

  def show
    @bg_blue = false
    @product = Product.find(params[:id])
    @demand = Demand.new
  end
end
