class Post < ActiveRecord::Base
  attr_accessible :url, :tag_list, :user_id
  acts_as_taggable_on :tags 
  scope :by_join_date, order("created_at DESC")

  belongs_to :user

  # validates :url, must begin with "http://www.youtube.com/watch?v=", presence: true
  # validates :tag, presence: true
  # validates :user, presence: true

end
