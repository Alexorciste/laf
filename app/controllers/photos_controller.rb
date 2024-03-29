class PhotosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  after_action :verify_authorized, except: [:index, :show], unless: :skip_pundit?

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
    authorize @photo
  end

  def create
    @photo = Photo.create(photo_params)
    @photo.category = Category.find(params[:category_id])
    if @photo.save
      redirect_to category_path(@photo.category), notice: 'Photo uploadée.'
    else
      render :new
    end
    authorize @photo
  end

  def edit
    @photo = Photo.find(params[:id])
    @category = @photo.category
    authorize @photo
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      redirect_to category_path(@photo.category), notice: 'Photo modifiée.'
    else
      render :edit
    end
    authorize @photo
  end

  def destroy
    @category = Category.find(params[:category_id])
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to category_path(@photo.category_id), notice: 'Photo supprimée.'
    authorize @photo
  end

  private

  def photo_params
    params.require(:photo).permit(:name, :description, :image)
  end
end
