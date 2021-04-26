class CommentsController < ApplicationController

  def new
    @comments = Comment.all
    @comment = Comment.new
  end
  def create
    Comment.create(comment_params)
  end
    
      private
      def comment_params
        params.require(:comment).permit(:text).merge(user_id: current_user.id, shop_id: params[:shop_id])
      end
end
