class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    
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
