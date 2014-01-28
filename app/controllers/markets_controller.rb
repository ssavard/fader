class MarketsController < ApplicationController
  before_action :signed_in_user, only: [:index,:edit, :update, :destroy]
  before_action :admin_user,     only: :destroy

  def show
    @market = Market.find(params[:id])
    @hash = Gmaps4rails.build_markers(@market.stations) do |station, marker|
     marker.lat station.latitude
     marker.lng station.longitude
     marker.title station.call
     marker.infowindow station.call
    end
    
  end
  
  def index
    #@markets = Market.all
    #@markets = Market.paginate(page: params[:page], :per_page => 25).order('rank ASC')
    @q = Market.search(params[:q])
    @markets = @q.result
    @hash = Gmaps4rails.build_markers(@markets) do |market, marker|
     marker.lat market.latitude
     marker.lng market.longitude
     marker.title market.rank.to_s
     marker.infowindow market.name
    end
    
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
                                   :latitude, :complete)
    end
  
  # Before filters

  
    
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end 

end