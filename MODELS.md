###User
- attr_accessible :name, :email, :password, :can_post
- has_many :posts
- before_create :set_member

###Post
- attr_accessible :url
- belongs_to :user
- has_many :tags, :through => :taggings

###Tag
- attr_accessible :name
- has_many :posts, :through => :taggings

###Tagging
- belongs_to :tags
- belongs_to :posts



tags - western, scifi, medieval

Taggings table:
post_id: 1, tag_id: 1
post_id: 1, tag_id: 2
post_id: 1, tag_id: 3

a post has_many tags, :through => :taggings
Post.first.tags <- return "western, scifi, ..."

Post.create(url: "5j3idugj39jd")
Tag.create(name: "Western")
Tagging.create(post_id: 1, tag_id: 1)