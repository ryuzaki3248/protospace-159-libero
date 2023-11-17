class CommentsController < ApplicationController
  
	def create
    @comments = Comment.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:content).marge(user_id: current_user.id,prototype_id: params[:tweet_id])
  end
    

end
