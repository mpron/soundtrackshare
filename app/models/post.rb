class Post < ActiveRecord::Base

  attr_accessible :url
  belongs_to :user
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  accepts_nested_attributes_for :taggings

end
