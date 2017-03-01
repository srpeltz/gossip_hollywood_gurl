class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @post = Post.find(params[:id])
    @comment = current_user.comments.new(comment_params)
    @comment.post = @post
    if @comment.save
      redirect_to post_path(@post)
    else
      redirect_to :back
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment.destroy
    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit([:body])

  end
end
