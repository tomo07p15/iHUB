class OngoingcommentsController < ApplicationController
def create
    @comment = Comment.create(ongoingcomment: comment_params[:ongoingcomment], ongoing_id: comment_params[:ongoing_id], user_id: current_user.id)
    redirect_to "/ongoings/#{@comment.ongoing.id}"
  end

  private
  def comment_params
    params.permit(:ongoingcomment, :ongoing_id)
  end
end
