class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :edit]

  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def edit

  end

  def update
  end

  def create
    #binding.pry
    set_post
    if @post.comment.save
      flash[:notice] = "your comment was created."
      redirect_to post_path
    else
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

  protected
  def set_post
    @post = Post.find(params[:post_id])
  end
  def set_comment
    @comment = Commentt.find(params[:id])
  end
end
