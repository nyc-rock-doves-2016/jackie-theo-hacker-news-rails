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

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
