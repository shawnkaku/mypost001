class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :edit]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit

  end

  def update
    if @post.update(post_params)
      flash[:notice] = "The post was updated."
      redirect_to posts_path
    else
      render :edit
    end

  end

  def create
    #binding pry
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "your post was created."
      redirect_to posts_path
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit!
  end

  protected
  def set_post
    @post = Post.find(params[:id])
  end

end
