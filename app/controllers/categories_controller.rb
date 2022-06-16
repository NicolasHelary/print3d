class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @category_product = @category.products
    # @product = Product.find(params[:id])
  end
end
