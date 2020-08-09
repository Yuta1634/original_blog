class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.create(tag_params)
    if @tag.save
      redirect_to root_path
    else
      render:new
    end
  end

  def show
    @tags = Tag.all
    @tag = Tag.find(params[:id])
    @post = @tag.posts.order("created_at DESC").page(params[:page]).per(10)
  end

  private
  def tag_params
    params.require(:tag).permit(:text)
  end
end
