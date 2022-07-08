class PrivatecatsController < ApplicationController
  before_action :set_privatecat, only: [:show, :edit, :update, :destroy]
  def index
    @privatecats = policy_scope(Privatecat)
  end

  def show
    @privatecat = Privatecat.find(params[:id])
    @authorized_user = User.find(@privatecat.gallery_owner_id)
    authorize @privatecat
  end

  def new
    @privatecat = Privatecat.new
    @emails = User.all.map { |user| user.email }
    authorize @privatecat
  end

  def create

    #@privatecat = Privatecat.create(privatecat_params)
    @users = User.where(email: params[:privatecat][:gallery_owner])
    @privatecat_name = params[:privatecat][:name]
    @users.each do |user|
      @gallery_owner = user.id
      @privatecat = Privatecat.create(name: @privatecat_name, gallery_owner_id: @gallery_owner)
    end

    if @privatecat.save
      redirect_to privatecat_path(@privatecat), notice: 'Cat créée.'
    else
      render :new
    end
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
