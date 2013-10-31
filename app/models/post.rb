class Post < ActiveRecord::Base
  attr_accessible :url, :tag_list, :user_id
  acts_as_taggable_on :tags
  #scope :by_join_date, order("created_at DESC")

  belongs_to :user

  # validates :url, must begin with "http://www.youtube.com/watch?v=", presence: true
  # validates :tag, presence: true
  # validates :user, presence: true

  def self.search(search)
    if search
      Post.tagged_with(search, :any => true)
    end
  end

end
