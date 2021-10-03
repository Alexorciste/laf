class PhotosController < ApplicationController
  skip_before_action :authenticate_user!



  def index
    @photos = policy_scope(Photo)
  end

  def show  
    @category = Category.find(params[:category_id])
    @photo = Photo.find(params[:id])

  end

  def new
    @photo = Photo.new
    @category = Category.find(params[:category_id])
  end

  def create
    @photo = Photo.create(photo_params)
    @photo.category = Category.find(params[:category_id])
    if @photo.save
      redirect_to category_path(@photo.category), notice: 'Photo uploadée.'
    else
      render :new
    end
  end

  def edit
    @photo = Photo.find(params[:id])
    @category = @photo.category
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      redirect_to category_path(@photo.category), notice: 'Photo modifiée.'
    else
      render :edit
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to category_path(@photo.category_id), notice: 'Photo supprimée.'
  end

  private 

  def set_photo
   
  end

  def photo_params
    params.require(:photo).permit(:name, :description, :image) 
  end


end
