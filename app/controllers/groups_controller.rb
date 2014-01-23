class GroupsController < ApplicationController
  
  before_action :signed_in_user, only: [:index,:edit, :update, :destroy]
  before_action :admin_user,     only: :destroy
  
  def show
    @group = Group.find(params[:id])
  end
  
  def index
    
    @groups = Group.paginate(page: params[:page], :per_page => 25).order('name ASC')
    
    
  end
  
  def new
    @group = Group.new
  end
  
  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to @group
    else
      render 'new'
    end
  end
  
  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(group_params)
      flash[:success] = "Group updated"
      redirect_to @group
    else
      render 'edit'
    end
  end
  
  def destroy
    Group.find(params[:id]).destroy
    flash[:success] = "Group deleted."
    redirect_to groups_url
  end
  
  
  private

    def group_params
      params.require(:group).permit(:name, :address, :phone, :web, :description, :longitude,
                                   :latitude)
    end
  
  # Before filters

  
    
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end 

end

