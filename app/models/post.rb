class Post < ActiveRecord::Base
  #after_create :add_taggings


  attr_accessible :url
  belongs_to :user
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  accepts_nested_attributes_for :taggings

  #private
  #def add_taggings
    #params[:tag].each do |x| 
      #Taggings.create(post_id: params[post_id], 
        #x.id)
    #end
  #end
end
