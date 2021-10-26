class PrivatecatsController < ApplicationController
  before_action :set_privatecat, only: [:show, :edit, :update, :destroy]  
  def index
    @privatecats = policy_scope(Privatecat)
   
  end

  def show
    @userauth = User.find(@privatecat.private_assigns[0][:user_id])
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
    authorize @privatecat
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def privatecat_params
    params.require(:privatecat).permit(:name, images: [])
  end

  def set_privatecat
  @privatecat = Privatecat.find(params[:id])
  end



end
