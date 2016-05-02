class UsersController < ApplicationController
  def show
    # binding.pry
    @user = User.find_by(id: params[:id])
    @posts = @user.posts
    @comments = @user.comments
  end

end
