class PostsController < ApplicationController
  
  def index
    @posts = Post.all.order("created_at DESC").page(params[:page]).per(10)
    @tags = Tag.all
  end

  def new
    @post = Post.new
    @tags = Tag.all
    @post.tags
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      redirect_to action: :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @tags = Tag.all
    @comment = Comment.new
    @comments = @post.comments
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(post.id)
  end

  def delete
    @post = Post.find(params[:id])
    @post.destroy
    redirect_tp root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :image, tag_ids: []).merge(user_id: current_user.id)
  end
  
end
