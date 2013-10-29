class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @username = @user.name
    @posts = @user.posts.paginate(page: params[:page], per_page: 10)
  end
end
