class CommentsController < ApplicationController
    def create
        @chat = Chat.find(params[:chat_id])
        @comment = @chat.comments.create(comment_params)
        redirect_to chat_path(@chat)
    end

    private
    def comment_params
        params.require(:comment).permit(:name, :content)
    end
end
