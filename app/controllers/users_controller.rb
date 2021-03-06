class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    @posts = @user.posts
    @comments = @user.comments
  end

  private
  def user_params
    params.require(:user).permit(:full_name, :email, :password)
  end

end
