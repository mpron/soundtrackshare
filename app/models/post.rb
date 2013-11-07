class Post < ActiveRecord::Base
  belongs_to :user
  acts_as_taggable_on :tags
  attr_accessible :url, :tag_list, :user_id
  default_scope order("created_at DESC")

  VALID_TAGS = Tag.pluck("name")

  #before_validation :full_tags

  def formatted_url
    # http://www.youtube.com/watch?v=abc123
    url_split = url.split("?v=")
    url_split.length > 1 ? url_split[1] : url
  end

  validates :url, :format => { :with => /youtube.com\/watch\?v=.{11}$/i,
    :message => "Only use direct YouTube video page URLs please." }, presence: true

  validates :tag_list, :inclusion => { :in => ['epic', 'Epic'],
    :message => "%{value} is not a valid tag" }

  validates :user, presence: true

  def self.search(search, filter)
    if search && filter
      Post.tagged_with(search, :match_all => true)
    elsif search 
      Post.tagged_with(search, :any => true)
    end
  end

  def self.full_tags
    ary = []
    Tag.all.each {|tag| ary << tag.name }
    ary
  end

end
