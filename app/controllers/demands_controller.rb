class DemandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new]
  before_action :set_demand, only: [:show]

  def index
    @demands = Demand.all
  end

  def show
  end

  def new
    @demand = Demand.new
    @user = current_user
    @product = Product.find(params[:product_id])
  end

  def create
    @demand = Demand.new
    @user = User.find(params[:user_id])
    @product = Product.find(params[:product_id])
    @demand.user = @user
    @demand.product = @product
    if @demand.save
      redirect_to profile_path
      flash[:alert] = "You successfully made a print demand for #{@product}"
    else
      render :new
    end
  end

  private

  def set_demand
    @demand = Demand.find(params[:id])
  end

  def demand_params
    params.require(:demand).permit(:proposed_price, :comment)
  end

end
