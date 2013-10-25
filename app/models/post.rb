class Post < ActiveRecord::Base
  attr_accessible :url, :tag_list
  acts_as_taggable

  belongs_to :user

  # validates :url, must begin with "http://www.youtube.com/watch?v=", presence: true
  # validates :tag, presence: true
  # validates :user, presence: true

end
