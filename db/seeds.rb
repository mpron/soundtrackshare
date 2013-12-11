u = User.new(
  name: 'Mitch P',
  email: 'mpronschinske+sts@gmail.com', 
  password: ';phalanx', 
  password_confirmation: ';phalanx')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'admin')

u = User.new(
  name: 'Member',
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
Post.create(url: "http://www.youtube.com/watch?v=zpY3q8oMzJM", user_id: 1, tag_list: "Piano, Ambient, Romance")

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
Post.create(url: "http://www.youtube.com/watch?v=b_ajArNJmjY", user_id: 1, tag_list: "Confidence, Angry, Tension, Distortion")

#20+
Post.create(url: "http://www.youtube.com/watch?v=hesg2_q-B-Q", user_id: 1, tag_list: "Dramatic, Building, Preparing, Sci-fi, Hope")
Post.create(url: "http://www.youtube.com/watch?v=2PrK5sLskyw", user_id: 1, tag_list: "Building, Hope, Bravery")
Post.create(url: "http://www.youtube.com/watch?v=NcaFf5RwrBY", user_id: 1, tag_list: "Sci-fi, Horn, Evil, Epic, Angry")
Post.create(url: "http://www.youtube.com/watch?v=47MugvaePqA", user_id: 1, tag_list: "Ambient, Synth")
Post.create(url: "http://www.youtube.com/watch?v=NQUpYENOKyY", user_id: 1, tag_list: "Ambient, Synth")
Post.create(url: "http://www.youtube.com/watch?v=90b82L-FZVI", user_id: 1, tag_list: "Ambient, Synth")
Post.create(url: "http://www.youtube.com/watch?v=oMTmVGfnON0", user_id: 1, tag_list: "Evil, Synth")
Post.create(url: "http://www.youtube.com/watch?v=bmOTo_vbGD4", user_id: 1, tag_list: "Medieval, Village, Accordion, Happy, Celebration")
Post.create(url: "http://www.youtube.com/watch?v=eFg4dyUuVlM", user_id: 1, tag_list: "Happy, Organ, Celebration")
Post.create(url: "http://www.youtube.com/watch?v=WRdWLXiq9A8", user_id: 1, tag_list: "Jazz, Piano, Comedic")
Post.create(url: "http://www.youtube.com/watch?v=E4ben9JspeA", user_id: 1, tag_list: "Orchestral, Comedic")
Post.create(url: "http://www.youtube.com/watch?v=u9a8HwoMEGY", user_id: 1, tag_list: "Western, Adventure, Exploring")
Post.create(url: "http://www.youtube.com/watch?v=otO2hbfE2zM", user_id: 1, tag_list: "Excitement, Possibilities, Adventure, Flying, Exploring, Confidence")
Post.create(url: "http://www.youtube.com/watch?v=Lu_nvUBG0I4", user_id: 1, tag_list: "Village, Flute, Adventure, Exploring")
Post.create(url: "http://www.youtube.com/watch?v=Wp8RTgf4oK8", user_id: 1, tag_list: "Exploring, Hope, Orchestral")
Post.create(url: "http://www.youtube.com/watch?v=ietzDT5lOpQ", user_id: 1, tag_list: "Harp, Exploring, Haunting")
Post.create(url: "http://www.youtube.com/watch?v=6jAYLiM7QyE", user_id: 1, tag_list: "Dramatic, Bittersweet, Ending, Romance, Love, Inspirational")
Post.create(url: "http://www.youtube.com/watch?v=bjgOLnfbC0E", user_id: 1, tag_list: "Orchestral, Love, Ending, Romance, Happy")
Post.create(url: "http://www.youtube.com/watch?v=odQrmRKD4xQ", user_id: 1, tag_list: "Orchestral, Possibilities, Excitement, Fantasy")
Post.create(url: "http://www.youtube.com/watch?v=5Ac3lcvdl1s", user_id: 1, tag_list: "Bravery, Confidence, Adventure, Dramatic, Orchestral, Fantasy")
Post.create(url: "http://www.youtube.com/watch?v=bGl4OM5X43I", user_id: 1, tag_list: "Fantasy, Possibilities, Happy")
Post.create(url: "http://www.youtube.com/watch?v=pd5q7RLDTyw", user_id: 1, tag_list: "Driving, Bravery, Hope, Flying")
Post.create(url: "http://www.youtube.com/watch?v=1-EgMjgV-6c", user_id: 1, tag_list: "Driving, Violin, Happy, Flying")
Post.create(url: "http://www.youtube.com/watch?v=EjOatCkrT1M", user_id: 1, tag_list: "Kabuki, Battle, Drums")
Post.create(url: "http://www.youtube.com/watch?v=osGV_1LxAgQ", user_id: 1, tag_list: "Drums, Kabuki, Preparing, Epic, Tension")
Post.create(url: "http://www.youtube.com/watch?v=M2DbjbZz_dM", user_id: 1, tag_list: "Kabuki, Tension, Battle")
Post.create(url: "http://www.youtube.com/watch?v=F7U0yKMs85Q", user_id: 1, tag_list: "Medieval, Epic, March, Confidence")
Post.create(url: "http://www.youtube.com/watch?v=22yTf0kD6-g", user_id: 1, tag_list: "Children's Choir, Hope, Adventure, Melancholy, Medieval")
Post.create(url: "http://www.youtube.com/watch?v=1vU7XqToZso", user_id: 1, tag_list: "Electric Guitar, Epic, Preparing, Confidence, Sports")
Post.create(url: "http://www.youtube.com/watch?v=4E8wHTX5nac", user_id: 1, tag_list: "Epic, Preparing, Battle, Sports, Confidence")
Post.create(url: "http://www.youtube.com/watch?v=U-ePLrPHWqg", user_id: 1, tag_list: "Confidence, Inspirational, Epic, Preparing, Battle, Sports")
Post.create(url: "http://www.youtube.com/watch?v=AnVRWD3qF2w", user_id: 1, tag_list: "Relaxed, Trip-hop, Synth")
Post.create(url: "http://www.youtube.com/watch?v=UXLdczfvuBc", user_id: 1, tag_list: "Synth, Relaxed, Latin")
Post.create(url: "http://www.youtube.com/watch?v=yU5jNz2rr6g", user_id: 1, tag_list: "Relaxed, Latin")
Post.create(url: "http://www.youtube.com/watch?v=4NwpLA0kLaQ", user_id: 1, tag_list: "Ethereal, Relaxed, Romance, Happy")
Post.create(url: "http://www.youtube.com/watch?v=W7UVfoXQT6w", user_id: 1, tag_list: "Irish Folk, Excitement, Relaxed")
Post.create(url: "http://www.youtube.com/watch?v=RHgYEsE8eEo", user_id: 1, tag_list: "Haunting, Relaxed")
Post.create(url: "http://www.youtube.com/watch?v=QGhUfhQ-_PI", user_id: 1, tag_list: "Sci-fi, Electric Guitar, Distortion, Dramatic, Hope, Confidence")
Post.create(url: "http://www.youtube.com/watch?v=dEYvYGxt0gQ", user_id: 1, tag_list: "Sci-fi, Melancholy, Hope, Dramatic, Haunting")
Post.create(url: "http://www.youtube.com/watch?v=K5R7Y_nZ6yw", user_id: 1, tag_list: "Hope, Possibilities, Violin, Lilting, Space")
Post.create(url: "http://www.youtube.com/watch?v=NUmLZYDobMM", user_id: 1, tag_list: "Epic, Dramatic, Horn, Space")
Post.create(url: "http://www.youtube.com/watch?v=6QjPhe2RxGU", user_id: 1, tag_list: "Driving, Epic, Evil, Hope, Space, Confidence")
Post.create(url: "http://www.youtube.com/watch?v=lxhQZ0NsJlQ", user_id: 1, tag_list: "Sports, Angry, Confidence, Battle")
Post.create(url: "http://www.youtube.com/watch?v=XqWknWbIWCE", user_id: 1, tag_list: "Sports, Epic, Bravery, Battle, Hope")
Post.create(url: "http://www.youtube.com/watch?v=M1BhZUUORqg", user_id: 1, tag_list: "Western, Tribal")
Post.create(url: "http://www.youtube.com/watch?v=W0IWB6qEn9o", user_id: 1, tag_list: "Distortion, Evil, Tribal, Battle")
Post.create(url: "http://www.youtube.com/watch?v=7GStKGNxU9U", user_id: 1, tag_list: "Violin, Victorian, Dramatic, Confidence")
Post.create(url: "http://www.youtube.com/watch?v=TGaJXHhp7Lw", user_id: 1, tag_list: "Victorian, Orchestral")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
Post.create(url: "", user_id: 1, tag_list: "")
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
Tag.find_by_name("evil").update_attribute("url", "lmc21V-zBq0?list=PLn6gIVVWkLcQkXeSVg8xxMA5cwli3FW1h")
Tag.find_by_name("excitement").update_attribute("url", "Bg-RH9AfYVM?list=PLn6gIVVWkLcRSr5_dGOwy8lLXBLATq1Km")
Tag.find_by_name("mysterious").update_attribute("url", "f4YepC4W200?list=PLn6gIVVWkLcRLZ4v9H8oFgIrl6kIo2HGq")
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

