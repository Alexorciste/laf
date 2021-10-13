class PrivatecatsController < ApplicationController
  def index
    @pric=vatecats = policy_scope(Privatecat)
    
  end

  def show
    @privatecat = Privatecat.find(params[:id])
    authorize @privatecat

  end

  def new
    @privatecat = Privatecat.new
    authorize @privatecat
  end

  def create
    @privatecat= Privatecat.create(privatecat_params)
    redirect_to privatecats_path(@privatecat)
    authorize @category
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def privatecat_params
    params.require(:privatecat).permit(:name, :images [])
  end

  def set_privatecat
  @privatecat = Privatecat.find(params[:id])
  end



end
