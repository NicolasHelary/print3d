class CategoriesController < ApplicationController
  def show
  @category = Category.find(params[:id])
  @category_product = @category.products
  end
end
