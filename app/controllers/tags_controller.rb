class TagsController < ApplicationController
  def new
    @tag = Tag.new
    authorize! :create, @tag, message: "You need be an admin."
  end

  def show
    @tag = params[:name]
    @posts = Post.tagged_with(params[:name]).paginate(page: params[:page], per_page: 10) 
  end

  def create
    @tag = Tag.new(params[:tag])
    authorize! :create, @post, message: "You need be an admin."
    if @tag.save
      flash[:notice] = "Tag was saved successfully."
      redirect_to tag_new_path
    else
      flash[:error] = "Error creating tag. Please try again."
      render :new
    end
  end
end