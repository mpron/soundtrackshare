class WelcomeController < ApplicationController

  def search
    @tags = Tag.all
    @filter = params[:filter]
  end

  def results
    @filter = params[:filter]
    @posts = Post.search(params[:tags], @filter).paginate(page: params[:page], per_page: 10)
  end


end
