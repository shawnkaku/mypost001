class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :edit]

  def index
    @categories = Category.all
  end
  def show
    @posts = @category.posts
  end

  protected
  def set_category
    @category = Category.find(params[:id])
  end
end
