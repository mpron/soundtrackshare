class PostsController < ApplicationController

  def new
    @post = Post.new
    authorize! :create, @post, message: "You need create an account first."
  end

  def create
    @post = Post.new
    @post.user_id = current_user.id
    @post.url = params[:post][:url]
    @post.save

    tags = params[:post][:tag_list].split(",").map(&:lstrip)
    tag_names = Tag.all.map{|t| t.name}

    tags.each do |tag|
      tag.downcase!
      @post.tag_list.add(tag) if tag_names.include? tag
    end

    authorize! :create, @post, message: "You need create an account first."
    if @post.save
      flash[:notice] = "Post was saved successfully."
      redirect_to user_path(current_user)
    else
      flash[:error] = "Error creating post. Please try again."
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    authorize! :destroy, @post, message: "You can't delete this. Scalawag."
    if @post.destroy
      flash[:notice] = "Post was deleted successfully."
      redirect_to current_user
    else
      flash[:error] = "There was an error deleting the post."
      render :show
    end
  end
end
