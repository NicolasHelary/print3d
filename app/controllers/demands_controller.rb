class DemandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_demand, only: [:show]

  def index
    @demands = Demand.all
  end

  def show
  end


  private

  def set_demand
    @demand = Demand.find(params[:id])
  end

  def demand_params
    params.require(:demand).permit(:proposed_price, :comment)
  end

end
