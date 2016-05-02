class CommentsController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id])
    @comments = @user.comments
  end

  def new
    # binding.pry
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    #binding.pry
    if @comment.save
      redirect_to @comment.post
    else
      render 'new'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end


end
