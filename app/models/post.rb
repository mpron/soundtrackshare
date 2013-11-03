class Post < ActiveRecord::Base
  belongs_to :user
  acts_as_taggable_on :tags
  attr_accessible :url, :tag_list, :user_id
  scope :by_join_date, order("created_at DESC")

  #before_validation :full_tags
  #before_create :split_url



   #validates :url, :format => { :with => /\Ayoutube.com\/watch?v=\z/,
    #:message => "Only use direct YouTube video page URLs please." }, presence: true

  # validates :tags, :inclusion => { :in => %w(full_tags),
    #:message => "%{value} is not a valid tag" }

  # validates :tags, :inclusion => { :in => lambda {||},
    #:message => "%{value} is not a valid tag" }

  validates :user, presence: true

  def self.search(search)
    if search
      Post.tagged_with(search, :any => true)
    end
  end

  #def split_url
    #snip = self.url.split("=")
    #self.url = snip[1]
  #end

  #def full_tags
    #ary = []
    #Tag.all.each {|tag| tag.name << ary}
    #ary.uniq
  #end

end
