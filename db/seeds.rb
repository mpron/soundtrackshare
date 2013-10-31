u = User.new(
  name: 'Admin User',
  email: 'admin@example.com', 
  password: 'helloworld', 
  password_confirmation: 'helloworld')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'admin')

u = User.new(
  name: 'Member User',
  email: 'member@example.com', 
  password: 'helloworld', 
  password_confirmation: 'helloworld')
u.skip_confirmation!
u.save

################

#1
#Tag.create(name: "adventure")
#2
#Tag.create(name: "battle")
#3
#Tag.create(name: "dramatic")
#4
#Tag.create(name: "epic")
#5
#Tag.create(name: "excitement")
#6
#Tag.create(name: "happy")
#7
#Tag.create(name: "inspirational")
#8
#Tag.create(name: "sadness")
#9
#Tag.create(name: "tension")

##################

#1
Post.create(url: "75QC59i-dIY", user_id: 1,
  tag_list: "adventure")
#Tagging.create(post_id: 1, tag_id: 1)


#2
Post.create(url: "PWlLp5riuzk", user_id: 1,
  tag_list: "battle, epic")
#Tagging.create(post_id: 2, tag_id: 2)
#Tagging.create(post_id: 2, tag_id: 4)

#3
Post.create(url: "OWCB2DabJ04", user_id: 2, tag_list: "dramatic, epic")
#Tagging.create(post_id: 3, tag_id: 3)
#Tagging.create(post_id: 3, tag_id: 4)

#4
#Post.create(url: "WzljtlGj_lA")
#Tagging.create(post_id: 4, tag_id: 5)

#5
#Post.create(url: "2cKXHVgH40Q")
#Tagging.create(post_id: 5, tag_id: 6)
#Tagging.create(post_id: 5, tag_id: 5)

#6
#Post.create(url: "vLVyhWDnSOI")
#Tagging.create(post_id: 6, tag_id: 7)

#7
#Post.create(url: "DT8S9rOd2zM")
#Tagging.create(post_id: 7, tag_id: 8)
#Tagging.create(post_id: 7, tag_id: 4)
#Tagging.create(post_id: 7, tag_id: 3)

#8
#Post.create(url: "oGx5P1N22pI")
#Tagging.create(post_id: 8, tag_id: 9)

Tag.find_by_name("epic").update_attribute("url", "KzlAE3Z-vcA?list=PLn6gIVVWkLcRLLmGbTq1ZViCU9qsau9ba")