class Api::V1::PostsController < ApplicationController 
  def index 
    posts = Post.all 

    render json: PostSerializer.new(posts)
  end

  def create 
    post = Post.new(post_params)
    if post.save 
      render json: post, status: :accepted  
    else
      render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show 
    post = Post.find_by(id: params[:id]) 

    render json: PostSerializer.new(post)
  end

  private 

  def post_params 
    params.require(:post).permit(:title, :content)
  end
end