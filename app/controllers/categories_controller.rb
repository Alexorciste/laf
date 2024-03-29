class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  after_action :verify_authorized, except: [:index, :show], unless: :skip_pundit?

  def index
    @categories = policy_scope(Category)
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
    authorize @category
  end

  def create
    @category = Category.create(category_params)
    redirect_to categories_path
    authorize @category
  end

  def edit
    @category = Category.find(params[:id])
    authorize @category
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to categories_path
    authorize @category
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
    authorize @category
  end

  private

  def category_params
    params.require(:category).permit(:name, :image)
  end

  def set_category
  @category = Category.find(params[:id])
  end
end
