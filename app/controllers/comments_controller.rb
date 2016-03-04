class CommentsController < ApplicationController
  def create
    @comment = Comment.create(text: comment_params[:text], twig_id: comment_params[:twig_id], user_id: current_user.id)
    redirect_to "/twigs/#{@comment.twig.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(twig_id: params[:twig_id])
  end
end
