class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :edit]

  def index
    @categories = Category.all
  end
  def show
    @posts = @category.posts
  end
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "your category was created."
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end

  protected
  def set_category
    @category = Category.find(params[:id])
  end
end
