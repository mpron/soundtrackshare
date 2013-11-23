class TagsController < ApplicationController

  def show
    @tag = Tag.find_by_name(params[:name])
    @posts = Post.tagged_with(params[:name]).paginate(page: params[:page], per_page: 10) 
    @playlist = @tag.url
    @playlistlink = @playlist.gsub "?", "&feature=share&"
  end

end