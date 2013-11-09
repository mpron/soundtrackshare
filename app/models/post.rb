class Post < ActiveRecord::Base
  belongs_to :user
  acts_as_taggable_on :tags
  attr_accessible :url, :tag_list, :user_id
  default_scope order("created_at DESC")

  def formatted_url
    url_split = url.split("?v=")
    url_split.length > 1 ? url_split[1] : url
  end

  validates :url, :format => { :with => /youtube.com\/watch\?v=.{11}$/i,
    :message => "Only use direct YouTube video page URLs please." }, presence: true

  validates :user, presence: true
  validates :tag_list, presence: true

  def self.search(search, filter)
    if search && filter
      Post.tagged_with(search, :match_all => true)
    elsif search 
      Post.tagged_with(search, :any => true)
    end
  end


end
