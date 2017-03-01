class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    @post.user = current_user

    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(post_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  def upvote
    @post = Post.find(params[:id])
    @post.upvote_by current_user
    # redirect_to :back
    if params[:view] == 'index'
      redirect_to '/#' + @post.id.to_s
    else
      redirect_to :back
    end
  end

  def downvote
    @post = Post.find(params[:id])
    @post.downvote_by current_user
    if params[:view] == 'index'
      redirect_to '/#' + @post.id.to_s
    else
      redirect_to :back
    end
  end

  private
  def post_params
    (params.require(:post).permit(:title, :boss_name, :boss_company, :boss_title, :body))
  end

end
