class Admin::UsersController < ApplicationController
  def index
    @users = User.all
    @username = @users.find(params[:id]).name 
    #.paginate(page: params[:page], per_page: 10)
  end
end
