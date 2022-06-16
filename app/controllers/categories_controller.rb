class CategoriesController < ApplicationController
  def show
    # @categories = Category.all
    @category = Category.find(params[:id])
    # @products = Product.where(@category)

    # if params[:query].present?
    #   @categories = Product.where(name: params[:query])
    # else
    #   @categories = Product.all
    end
  end
end
