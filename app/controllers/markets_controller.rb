class MarketsController < ApplicationController
  before_action :signed_in_user, only: [:index,:edit, :update, :destroy]
  before_action :admin_user,     only: :destroy

  def show
    @market = Market.find(params[:id])
  end
  
  def index
    #@markets = Market.all
    @markets = Market.paginate(page: params[:page])
  end

  
  def new
    @market = Market.new
  end
  
  def create
    @market = Market.new(market_params)
    if @market.save
      redirect_to @market
    else
      render 'new'
    end
  end
  
  def edit
    @market = Market.find(params[:id])
  end

  def update
    @market = Market.find(params[:id])
    if @market.update_attributes(market_params)
      flash[:success] = "Market updated"
      redirect_to @market
    else
      render 'edit'
    end
  end
  
  def destroy
    Market.find(params[:id]).destroy
    flash[:success] = "Market deleted."
    redirect_to markets_url
  end

private

    def market_params
      params.require(:market).permit(:name, :rank, :description, :longitude,
                                   :latitude)
    end
  
  # Before filters

  
    
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end 

end