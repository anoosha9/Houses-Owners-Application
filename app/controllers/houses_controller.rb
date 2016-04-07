class HousesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @owner = Owner.find(params[:owner_id])
    @houses = House.where(owner_id: params[:owner_id])
  end

  def new
   @owner = Owner.find_by_id(params[:owner_id])
   @house = @owner.houses.build
  end

  def show
    id = params[:id]
    @house = House.find(id)
  end

  def create
    @owner = Owner.find(params[:owner_id])
    @house = @owner.houses.create(house_params)
    if @house.save
      flash[:notice] = "House was successfully saved" 
      redirect_to owner_houses_path
    else
      render 'new'
    end
  end
  def house_params
    params.require(:house).permit(:housetype, :price, :addeddate, :availability, :hno, :street, :city, :state, :zipcode)
  end
  
  def edit
    @house = House.find(params[:id])
  end
  
  def update
    @house = House.find params[:id]
    if @house.update_attributes(house_params)
      flash[:notice] = "House was successfull updated"
      owner = @house.owner
      redirect_to owner_houses_path(owner)
    else
      render 'new'
    end
    
  end

end
