class DemandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new]
  before_action :set_demand, only: [:show, :edit, :update, :destroy]

  def index
    @demands = Demand.all
<<<<<<< HEAD
    # @demands_marker = @demands.geocoded.map do |demand|
    #     {
    #       lat: demand.user.latitude,
    #       lng: demand.user.longitude
    #     }
    # end
    @users_demand = @demands.map do |demand|
      demand.client
    end

    @demands_markers = @users_demand.map do |user_demand|
      {
        lat: user_demand.latitude,
        lng: user_demand.longitude
      }
    end
=======
    @bg_blue = true
>>>>>>> master
  end

  def offers
    @demand = Demand.find(params[:demand_id])
    @offers = @demand.offers
  end

  def show
  end

  def new
    @demand = Demand.new
    @user = current_user
    @product = Product.find(params[:product_id])
  end

  def create
    @demand = Demand.new(demand_params)
    @user = current_user
    @product = Product.find(params[:product_id])
    @demand.client_id = current_user.id
    @demand.product = @product
    if @demand.save
      redirect_to demands_path
      flash[:alert] = "You successfully made a print demand for #{@product.name}"
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @client = @demand.client
  end

  def update
    @demand.update(demand_params)
    redirect_to product_demand_path
  end

  def destroy
    @product = Product.find(params[:product_id])
    @demand.destroy
    redirect_to demands_path
  end

  private

  def set_demand
    @demand = Demand.find(params[:id])
  end

  def demand_params
    params.require(:demand).permit(:proposed_price, :comment)
  end

end
