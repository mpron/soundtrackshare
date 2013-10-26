class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @username = @user.name
    @posts = @user.posts
  end
end
