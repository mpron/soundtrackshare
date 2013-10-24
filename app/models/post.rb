class Post < ActiveRecord::Base
  attr_accessible :url, :tag_list
  acts_as_taggable

  belongs_to :user
end
