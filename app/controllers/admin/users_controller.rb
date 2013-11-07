class Admin::UsersController < ApplicationController

  def index
    @users = User.paginate(page: params[:page], per_page: 10)
    authorize! :read, @users, message: "Only Admins can visit this page."
  end
end
