class CommentsController < ApplicationController

  def fetch_by_word
    @comments = Comment.where(word_id: params[:id]).order('created_at desc')
  end

  def create
    @comment = Comment.new(comments_params)
    @comment.save
  end

  protected
  def comments_params
    params.require(:comment).permit(:message, :word_id)
  end

end
