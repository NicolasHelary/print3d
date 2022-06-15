class DemandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    @demands = Demand.all
  end


  private

  def set_demand
    @demand = Demand.find(params[:id])
  end

  def demand_params
    params.require(:demand).permit(:proposed_price, :comment)
  end
end
