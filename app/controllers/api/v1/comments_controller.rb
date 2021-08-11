class Api::V1::CommentsController < ApplicationController
  
  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment, status: :accepted
    else
      render json: { errors: comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :email, :message, :post_id)
  end
end
