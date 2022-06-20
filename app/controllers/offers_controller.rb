class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_offer, only: [:show, :update]

  def index
    @demand = Demand.find(params[:demand_id])
    @offer = Offer.all
  end
  def new
    @demand = Demand.find(params[:demand_id])
    @offer = Offer.new
  end

  def show
  end

  def create
    @offer = Offer.new(offer_params)
    @demand = Demand.find(params[:demand_id])
    @offer.demand = @demand
    @offer.printer = current_user
    if @offer.save
      flash[:alert] = "Offer sent to Client"
      redirect_to demands_path
    else
      render :new
    end
  end

  def update
    @offer.update(offer_params)
    redirect_to profil_path
  end

  private

  def offer_params
    params.require(:offer).permit(:price, :status)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
