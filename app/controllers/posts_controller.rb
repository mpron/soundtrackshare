class PostsController < ApplicationController

  def new
    @post = Post.new
    authorize! :create, @post, message: "You need create an account first."
  end

  def create
    @post = current_user.posts.build(params[:post])
    if params[:post][:tag_list].split(",").count > 1
      params[:post][:tag_list].split(",").each do |tag|
        @post.tag_list.add(tag) if Post.all_tags.include? tag
      else
    end
      @post.tag_list.add(params[:tag_list]) if Post.all_tags.include? params[:tag_list]
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
