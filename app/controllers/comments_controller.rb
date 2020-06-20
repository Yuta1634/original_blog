class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to "/posts/#{comment.post.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :email, :text).merge(post_id: params[:post_id])
  end
end
