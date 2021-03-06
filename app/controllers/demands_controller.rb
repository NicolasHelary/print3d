class DemandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new]
  before_action :set_demand, only: [:show, :edit, :update, :destroy]

  def index
    @demands = Demand.all.reverse

    clients = @demands.map do |demand|
      demand.client
    end

    @demands_markers = clients.map do |user_demand|
      {
        lat: user_demand.latitude,
        lng: user_demand.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user_demand: user_demand })
      }
    end

    @bg_blue = true

  end

  def offers
    @demand = Demand.find(params[:demand_id])
    @offers = @demand.offers

  end

  def show
    @bg_blue = true
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
      flash[:alert] = "You successfully made a print demand for #{@product.name}"
      redirect_to demands_path
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
    redirect_to profile_path
  end

  private

  def set_demand
    @demand = Demand.find(params[:id])
  end

  def demand_params
    params.require(:demand).permit(:proposed_price, :comment)
  end

end
