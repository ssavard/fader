class StationsController < ApplicationController
  before_action :signed_in_user, only: [:index,:edit, :update, :destroy]
  before_action :admin_user,     only: :destroy
  
  
  def show
    @station = Station.find(params[:id])
  end
  
  def index
    
    @stations = Station.paginate(page: params[:page], :per_page => 25).order('call ASC')
    
  end
  
  def new
    @station = Station.new
  end
  
  def create
    @station = Station.new(station_params)
    if @station.save
      redirect_to @station
    else
      render 'new'
    end
  end
  
  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    if @station.update_attributes(station_params)
      flash[:success] = "Station updated"
      redirect_to @station
    else
      render 'edit'
    end
  end
  
  def destroy
    Station.find(params[:id]).destroy
    flash[:success] = "Station deleted."
    redirect_to stations_url
  end
  
  
  private

    def station_params
      params.require(:station).permit(:call, :channel, :name, :address, :phone, :web, :description, :longitude,
                                   :latitude, :note, :priority, :group_id, :affiliate_id, :market_id)
    end
  
  # Before filters

  
    
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end 

end


