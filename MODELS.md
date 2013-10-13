###User
- attr_accessable :uid, :name, :email, :password, :blocked?
- has_many :posts
- before_create :set_member

###Post
- attr_accessable :tag_list
- acts_as_taggable [if tagging gem used](http://railscasts.com/episodes/382-tagging)
- belongs_to :user

###Tag
- attr_accessable :tag_id or maybe :tag_list
- has_and_belongs_to_many :posts

(not sure how to model the tagging for Post and Tag)

###Search?

> Written with [StackEdit](http://benweet.github.io/stackedit/).