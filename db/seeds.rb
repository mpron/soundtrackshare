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

#Post and Tag Seeds

#1
Post.create(url: "75QC59i-dIY", user_id: 1, tag_list: "adventure")

#2
Post.create(url: "PWlLp5riuzk", user_id: 1, tag_list: "battle, epic")

#3
Post.create(url: "OWCB2DabJ04", user_id: 2, tag_list: "dramatic, epic")

#4
Post.create(url: "WzljtlGj_lA", user_id: 1, tag_list: "excitement")

#5
Post.create(url: "2cKXHVgH40Q", user_id: 1, tag_list: "happy, excitement")

#6
Post.create(url: "vLVyhWDnSOI", user_id: 1, tag_list: "inspirational")

#7
Post.create(url: "DT8S9rOd2zM", user_id: 1, tag_list: "sadness, epic, dramatic")

#8
Post.create(url: "oGx5P1N22pI", user_id: 1, tag_list: "tension")

#9
Post.create(url: "DT8S9rOd2zM", user_id: 1, tag_list: "sadness, bittersweet, love, romance")

#10
Post.create(url: "K5tsfpLm4F4", user_id: 1, tag_list: "bravery, confidence, battle, violin, driving")

#11
Post.create(url: "", user_id: 1, tag_list: "")

#12
Post.create(url: "", user_id: 1, tag_list: "")

#13
Post.create(url: "", user_id: 1, tag_list: "")

#14
Post.create(url: "", user_id: 1, tag_list: "")

#15
Post.create(url: "", user_id: 1, tag_list: "")

#16
Post.create(url: "", user_id: 1, tag_list: "")

#17
Post.create(url: "", user_id: 1, tag_list: "")

#18
Post.create(url: "", user_id: 1, tag_list: "")

#############

# Playlist seeds

Tag.find_by_name("adventure").update_attribute("url", "96_s9eysPY4?list=PLn6gIVVWkLcS0e7QVeACpv9m7BPdgGqPs")
Tag.find_by_name("battle").update_attribute("url", "fx-f1yWWx_I?list=PLn6gIVVWkLcRbtiZH0rAOZD6iAEED5akc")
Tag.find_by_name("bittersweet").update_attribute("url", "6jAYLiM7QyE?list=PLn6gIVVWkLcRPyuSLr1gRI7TY6L15qUAt")
Tag.find_by_name("bravery").update_attribute("url", "K5tsfpLm4F4?list=PLn6gIVVWkLcTmppexCGD_BR_pskTC-D8i")
Tag.find_by_name("confidence").update_attribute("url", "ACsrDhqNg80?list=PLn6gIVVWkLcRwnvZ4WUcQpuX-3xtCrlCu")
Tag.find_by_name("dramatic").update_attribute("url", "_gBvQR-8W5I?list=PLn6gIVVWkLcQWPEitNTLnRGItDQ3gCXXh")
Tag.find_by_name("epic").update_attribute("url", "KzlAE3Z-vcA?list=PLn6gIVVWkLcRLLmGbTq1ZViCU9qsau9ba")
Tag.find_by_name("evil").update_attribute("url", "")
Tag.find_by_name("excitement").update_attribute("url", "")
Tag.find_by_name("exploring").update_attribute("url", "")
Tag.find_by_name("happy").update_attribute("url", "")
Tag.find_by_name("haunting").update_attribute("url", "")
Tag.find_by_name("hope").update_attribute("url", "")
Tag.find_by_name("inspirational").update_attribute("url", "")
Tag.find_by_name("melancholy").update_attribute("url", "")
Tag.find_by_name("nostalgia").update_attribute("url", "")
Tag.find_by_name("possibilities").update_attribute("url", "")
Tag.find_by_name("romance").update_attribute("url", "")
Tag.find_by_name("sadness").update_attribute("url", "")
Tag.find_by_name("tension").update_attribute("url", "")