class PrivatecatsController < ApplicationController
  before_action :set_privatecat, only: [:show, :edit, :update, :destroy]
  def index
    @privatecats = policy_scope(Privatecat)

  end

  def show
    @userauth = User.find(@privatecat.gallery_owner_id)
    @privatecat = Privatecat.find(params[:id])
    authorize @privatecat
  end

  def new
    @privatecat = Privatecat.new
    @gallery_owner = @privatecat.gallery_owner&.first || @privatecat.build_gallery_owner
    @catnames = User.all.map { |user| user.catname }
    authorize @privatecat
  end

  def create
    @privatecat = Privatecat.create(privatecat_params)
    raise
    #@users = User.where(email: params[:privatecat][:gallery_owner])
    #@privatecat_name = params[:privatecat][:name]

    #@users.each do |user|
    #  @gallery_owner = user.id
    #  @privatecat = Privatecat.create(name: @privatecat_name, gallery_owner_id: @gallery_owner)
    #end

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
    params.require(:privatecat).permit(:name, gallery_owner_attributes: [:id, :catname], images: [])
  end

  def set_privatecat
    @privatecat = Privatecat.find(params[:id])
  end



end
