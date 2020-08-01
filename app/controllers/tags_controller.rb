class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
<<<<<<< Updated upstream
    @tag = Tag.create(tag_params)
    redirect_to root_path
  end

  def show
    @tags = Tag.all
    @tag = Tag.find(params[:id])
    @posts = @tag.posts(params[:id])
=======
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to root_path
    else
      render:new
    end
>>>>>>> Stashed changes
  end

  private
  def tag_params
<<<<<<< Updated upstream
    params.require(:tag).permit(:text)
=======
    params.require(:tag).permit(:name)
>>>>>>> Stashed changes
  end
end
