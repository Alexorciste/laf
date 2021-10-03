class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :skip_authorization
  
  def index
    @categories = policy_scope(Category)
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    redirect_to categories_path(@category)
  end

  def edit
    @category = Category.find(params[:id])
   
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to categories_path(@category)
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private
        def category_params
          params.require(:category).permit(:name, :image)
        end

        def set_category
        @category = Category.find(params[:id])
        end
end
