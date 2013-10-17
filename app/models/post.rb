class Post < ActiveRecord::Base
  attr_accessible :url
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings
end
