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
Post.create(url: "http://www.youtube.com/watch?v=75QC59i-dIY", user_id: 1, tag_list: "fantasy, adventure, orchestral, exploring")

#2
Post.create(url: "http://www.youtube.com/watch?v=PWlLp5riuzk", user_id: 1, tag_list: "battle, epic")

#3
Post.create(url: "http://www.youtube.com/watch?v=OWCB2DabJ04", user_id: 2, tag_list: "dramatic, epic")

#4
Post.create(url: "http://www.youtube.com/watch?v=WzljtlGj_lA", user_id: 1, tag_list: "excitement")

#5
Post.create(url: "http://www.youtube.com/watch?v=2cKXHVgH40Q", user_id: 1, tag_list: "happy, excitement")

#6
Post.create(url: "http://www.youtube.com/watch?v=vLVyhWDnSOI", user_id: 1, tag_list: "inspirational")

#7
Post.create(url: "http://www.youtube.com/watch?v=DT8S9rOd2zM", user_id: 1, tag_list: "sadness, epic, dramatic")

#8
Post.create(url: "http://www.youtube.com/watch?v=oGx5P1N22pI", user_id: 1, tag_list: "tension")

#9
Post.create(url: "http://www.youtube.com/watch?v=DT8S9rOd2zM", user_id: 1, tag_list: "sadness, bittersweet, love, romance")

#10
Post.create(url: "http://www.youtube.com/watch?v=K5tsfpLm4F4", user_id: 1, tag_list: "bravery, confidence, battle, violin, driving")

#11
Post.create(url: "http://www.youtube.com/watch?v=nNDFN2f07XQ", user_id: 1, tag_list: "orchestral, distortion, evil, dramatic, guitar")

#12
Post.create(url: "http://www.youtube.com/watch?v=cqTVWJeixNI", user_id: 1, tag_list: "haunting, marimba")

#13
Post.create(url: "http://www.youtube.com/watch?v=YdgF63xKTe0", user_id: 1, tag_list: "hope, possibilities, adventure, dramatic, piano, flying")

#14
Post.create(url: "http://www.youtube.com/watch?v=eJ5IfryrCVs", user_id: 1, tag_list: "inspirational, sports, forging")

#15
Post.create(url: "http://www.youtube.com/watch?v=lOPaw9B63hw", user_id: 1, tag_list: "driving, orchestral, dramatic, strings, melancholy, tension")

#16
Post.create(url: "http://www.youtube.com/watch?v=M5LMP2NaZSg", user_id: 1, tag_list: "nostalgia, piano, love, bittersweet, ending, orchestral")

#17
Post.create(url: "http://www.youtube.com/watch?v=7mxtY8ytEO0", user_id: 1, tag_list: "hope, melancholy, sadness, piano")

#18
Post.create(url: "http://www.youtube.com/watch?v=dclghhnW4oU", user_id: 1, tag_list: "8-bit, adventure, confidence")

#19

#############

# Playlist seeds

Tag.find_by_name("adventure").update_attribute("url", "96_s9eysPY4?list=PLn6gIVVWkLcS0e7QVeACpv9m7BPdgGqPs")
Tag.find_by_name("battle").update_attribute("url", "fx-f1yWWx_I?list=PLn6gIVVWkLcRbtiZH0rAOZD6iAEED5akc")
Tag.find_by_name("bittersweet").update_attribute("url", "6jAYLiM7QyE?list=PLn6gIVVWkLcRPyuSLr1gRI7TY6L15qUAt")
Tag.find_by_name("bravery").update_attribute("url", "K5tsfpLm4F4?list=PLn6gIVVWkLcTmppexCGD_BR_pskTC-D8i")
Tag.find_by_name("confidence").update_attribute("url", "ACsrDhqNg80?list=PLn6gIVVWkLcRwnvZ4WUcQpuX-3xtCrlCu")
Tag.find_by_name("dramatic").update_attribute("url", "_gBvQR-8W5I?list=PLn6gIVVWkLcQWPEitNTLnRGItDQ3gCXXh")
Tag.find_by_name("epic").update_attribute("url", "KzlAE3Z-vcA?list=PLn6gIVVWkLcRLLmGbTq1ZViCU9qsau9ba")
Tag.find_by_name("evil").update_attribute("url", "lmc21V-zBq0?list=PLn6gIVVWkLcQkXeSVg8xxMA5cwli3FW1h")
Tag.find_by_name("excitement").update_attribute("url", "Bg-RH9AfYVM?list=PLn6gIVVWkLcRSr5_dGOwy8lLXBLATq1Km")
Tag.find_by_name("exploring").update_attribute("url", "u9a8HwoMEGY?list=PLn6gIVVWkLcQ6saDs9nTV3y0II4EuFZf1")
Tag.find_by_name("happy").update_attribute("url", "rDyw-f5CXCk?list=PLn6gIVVWkLcT8dJKv9fMYynnCdlTjd1xN")
Tag.find_by_name("haunting").update_attribute("url", "oGx5P1N22pI?list=PLn6gIVVWkLcR6iFZE7u7hooM6C-M_fI8u")
Tag.find_by_name("hope").update_attribute("url", "BkE3ti_dPko?list=PLn6gIVVWkLcQw8OVPjCqTGRYmJd33UYGG")
Tag.find_by_name("inspirational").update_attribute("url", "puRsvgjqySU?list=PLn6gIVVWkLcRB4DQmie_x61ER15etU72m")
Tag.find_by_name("melancholy").update_attribute("url", "fjFuzr07mXE?list=PLn6gIVVWkLcQDqRgA9x1i6h5xOO8NiUhR")
Tag.find_by_name("nostalgia").update_attribute("url", "t_FmaQiQcNE?list=PLn6gIVVWkLcRvRfRIY5chD5QsWxoc3nKs")
Tag.find_by_name("possibilities").update_attribute("url", "c2T2knomWqQ?list=PLn6gIVVWkLcT2Do_xNRcwMEu-ZtB4bXuW")
Tag.find_by_name("romance").update_attribute("url", "DT8S9rOd2zM?list=PLn6gIVVWkLcRBCG3u7XTyLgjkBWtMgjbJ")
Tag.find_by_name("sadness").update_attribute("url", "7mxtY8ytEO0?list=PLn6gIVVWkLcT6hcpCHlmE2G9kSpFQm7F4")
Tag.find_by_name("tension").update_attribute("url", "g8Pj6EoTGTc?list=PLn6gIVVWkLcTZiSrA9_htaguWI7WSFFVX")

