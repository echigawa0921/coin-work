class CommentsController < ApplicationController
    def create
        comment = Comment.create(comment_params)
        redirect_to "/shops/#{comment.shop.id}" 
      end
    
      private
      def comment_params
        params.require(:comment).permit(:text).merge(user_id: current_user.id, shop_id: params[:shop_id])
      end
end
