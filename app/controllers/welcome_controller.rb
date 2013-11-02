class WelcomeController < ApplicationController
  def search
    
  end

  def results
    @posts = Post.search(params[:tags]).paginate(page: params[:page], per_page: 10)
  end

end
