class PostsController < ApplicationController
  def index 
    #search results
    @posts = Post.includes(:tags).where('tags.id' => params['tag_ids']).all.paginate(page: params[:page], per_page: 10)
  end

  def new
    @post = Post.new
    #with taggings
    authorize! :create, @post, message: "You need create an account first."
  end

  def create
    @post = Post.new(params[:post])
    #with  taggings
    authorize! :create, @post, message: "You need create an account first."
    if @post.save
      flash[:notice] = "Post was saved successfully."
      redirect_to @posts
    else
      flash[:error] = "Error creating post. Please try again."
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    authorize! :destroy, @post, message: "You delete this. Scalawag."
    if @post.destroy
      flash[:notice] = "Post was deleted successfully."
      redirect_to posts_path
    else
      flash[:error] = "There was an error deleting the post."
      render :show
    end
  end
end
