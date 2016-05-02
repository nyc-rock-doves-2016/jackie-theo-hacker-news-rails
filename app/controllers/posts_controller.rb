class PostsController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id])
    # binding.pry
    @posts = @user.posts
  end

  def show
    @post = Post.find_by(id: params[:id])
    @comments = @post.comments
  end
end
