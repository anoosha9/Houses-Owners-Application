class OwnersController < ApplicationController
  before_filter :authenticate_user!
  def index
    @owners = Owner.order('firstname')
  end
  def show
    id = params[:id]
    @owner = Owner.find(id)
  end
  def new
    @owner = Owner.new
  end
  def create

    debugger
    @owner = Owner.create(owner_params)
    if @owner.save
      flash[:notice] = "#{@owner.firstname} was successfully created."
      redirect_to owners_path
    else
      render 'new'  
    end   
  end
  def owner_params
    params.require(:owner).permit(:firstname, :lastname, :emailid, :phoneno)
  end
  def edit
    @owner = Owner.find params[:id]
  end
  
  def update
    @owner = Owner.find params[:id]
    if @owner.update_attributes(owner_params)
      flash[:notice] = "#{@owner.firstname} was successfull updated"
      redirect_to owner_path(@owner)
    else
      render 'new'
    end  
  end
end
