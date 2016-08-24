Attendance.destroy_all
Invite.destroy_all
Friendship.destroy_all
Comment.destroy_all
Event.destroy_all
FriendRequest.destroy_all
UserRole.destroy_all
EventRole.destroy_all
EventTag.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all

# ===============================  Users ===============================

me = User.create!(
  email: 'finn-francis@yahoo.com',
  password: 'password',
  password_confirmation: 'password'
)

me.profile.update!(
  first_name: 'Finn',
  last_name: 'Francis',
  description: 'I am a coder, musician and slackmaste',
  country: 'United Kingdom',
  city: 'London',
  image_url: 'https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/1229903_10151901640200844_1776194532_n.jpg?oh=95ab76e64b579cc450669d8ee078cef2&oe=5841BAE0',
  latitude: 51.5074,
  longitude: 0.1278
)

john_lennon = User.create!(
  email: 'john_lennon@google.com',
  password: 'password',
  password_confirmation: 'password'
)

john_lennon.profile.update!(
  first_name: 'John',
  last_name: 'Lennon',
  description: 'English singer and songwriter with rebellious soul.  Enjoys playing guitar and piano with his friends. Big fun of birdwatching and scrambled eggs.',
  country: 'UK',
  city: 'Liverpool',
  image_url: 'http://cdn-media-1.lifehack.org/wp-content/files/2014/12/John-Lennon-1.jpg'
)

tracy_chapman = User.create!(
  email: 'tracy_chapman@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

tracy_chapman.profile.update!(
  first_name: 'Tracy',
  last_name: 'Chapman',
  description: 'American singer-songwriter playing guitar and harmonica. Feels best doing folk and blues music. Big fan of fast cars.',
  country: 'US',
  city: 'Cleveland',
  image_url: 'https://fanart.tv/fanart/music/1129817c-488a-4096-80c1-77fc1b107c93/artistbackground/chapman-tracy-5212ae9051d11.jpg'
)

bob_marley = User.create!(
  email: 'bob_marley@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

bob_marley.profile.update!(
  first_name: 'Bob',
  last_name: 'Marley',
  description: 'Jamaican reggae singer, songwriter, musician, and guitarist who got bored of farm living and started spreading idea of love and peace.',
  country: 'US',
  city: 'Miami',
  image_url: 'http://www.salrevista.com/wp-content/uploads/2015/01/bob_marley_light_up_the_darkness_by_tequilamonkey-d4ihv8x.jpg'
)

johnny_cash = User.create!(
  email: 'johnny_cash@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

johnny_cash.profile.update!(
  first_name: 'Johnny',
  last_name: 'Cash',
  description: 'American singer-songwriter, guitarist who doesn’t mind a little bit of acting on the side.  Primarily involved with country music but wouldn’t say “no” to a little bit of rock and roll or blues.',
  country: 'US',
  city: 'Nashville',
  image_url: 'http://vignette2.wikia.nocookie.net/simpsons/images/b/bf/103947-johnny_cash_617_409.jpg/revision/latest?cb=20111104090558'
)

lenny_kravitz = User.create!(
  email: 'lenny_kravitz@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

lenny_kravitz.profile.update!(
  first_name: 'Lenny',
  last_name: 'Kravitz',
  description: 'American singer, songwriter, actor and record producer, whose "retro" style incorporates elements of rock, blues, soul, R&B, funk, jazz, reggae, hard rock, psychedelic, pop, folk, and ballads.',
  country: 'US',
  city: 'New York',
  image_url: 'http://www.earnthenecklace.com/wp-content/uploads/2016/01/Lenny-Kravitz-Net-Worth.jpg'
)

lauryn_hill = User.create!(
  email: 'lauryn_hill@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

lauryn_hill.profile.update!(
  first_name: 'Lauryn',
  last_name: 'Hill',
  description: 'American singer, songwriter, rapper, record producer, and actress. Likes collecting shiny awards.',
  country: 'US',
  city: 'East Orange',
  image_url: 'http://crooksandliars.com/files/imagecache/node_primary/primary_image/14/08/lauryn_hill-43804270ec276bbebbd490e2659218c6f0c8e216.jpg'
)

eddie_vedder = User.create!(
  email: 'eddie_vedder@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

eddie_vedder.profile.update!(
  first_name: 'Eddie',
  last_name: 'Vedder',
  description: 'American musician, singer and songwriter with powerful baritone vocals. Does pretty well playing with bands as well as doing solo projects. His biggest dream is to record soundtrack for a movie.',
  country: 'US',
  city: 'Evanston',
  image_url: 'http://www.billboard.com/files/styles/article_main_image/public/media/eddie-vedder-pearl-jam-1992-nyc-performance-billboard-650.jpg'
)

syd_barrett = User.create!(
  email: 'syd_barrett@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

syd_barrett.profile.update!(
  first_name: 'Syd',
  last_name: 'Barrett',
  description: 'Songwriter and poet who doesn’t believe in education systems, likes to stare at the walls and secretly desires diamonds.',
  country: 'UK',
  city: 'Cambridge',
  image_url: 'https://i.guim.co.uk/img/media/c1940d766386802091aaf3739dafe1b1c3feabf1/0_725_1588_952/master/1588.jpg?w=620&q=55&auto=format&usm=12&fit=max&s=dab26bebfe22192f2becf7380ac1abea '
)

ella_fitzgerald = User.create!(
  email: 'ella_fitzgerald@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

ella_fitzgerald.profile.update!(
  first_name: 'Ella',
  last_name: 'Fitzgerald',
  description: 'American jazz singer who loves improvising with scat singing. Her friends call her “Queen of Jazz”.  Great as a duet singer.',
  country: 'US',
  city: 'LA',
  image_url: 'http://static.tumblr.com/a1e68cc7a1ef0f97a6b02486ce683195/lylrl2n/D6qnmgmwz/tumblr_static_bcwery3nhmo00k48cgkw8oso4.jpg'
)

adele_adkins = User.create!(
  email: 'adele_adkins@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

adele_adkins.profile.update!(
  first_name: 'Adele',
  last_name: 'Adkins',
  description: 'English singer and songwriter with deep voice. Specialise in sad songs - perfect to listen to having a cup of tea and feel depressed after a break up or just during another rainy day.',
  country: 'UK',
  city: 'London',
  image_url: 'http://www.billboard.com/files/styles/article_main_image/public/media/Adele-2015-press-Alasdair-McLellan-XL-billboard-650-2.jpg'
)

coco_chanel = User.create!(
  email: 'coco_chanel@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

coco_chanel.profile.update!(
  first_name: 'Coco',
  last_name: 'Chanel',
  description: 'French fashion designer and businesswoman. Her favourite number is 5.',
  country: 'France',
  city: 'Paris',
  image_url: 'http://a2.files.biography.com/image/upload/c_fit,cs_srgb,dpr_1.0,h_1200,q_80,w_1200/MTE5NDg0MDU0OTE5ODA4NTI3.jpg'
)

marilyn_monroe = User.create!(
  email: 'marilyn_monroe@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

marilyn_monroe.profile.update!(
  first_name: 'Marilyn',
  last_name: 'Monroe',
  description: 'American actress and model. Famous for playing "dumb blonde" characters, she became one of the most popular sex symbols of the 1950s.',
  country: 'U.S',
  city: 'LA',
  image_url: 'http://www.rantchic.com/wp-content/uploads/2014/08/Marilyn-Monroe-pics6.jpg'
)

clive_staples_lewis = User.create!(
  email: 'clive_staples_lewis@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

clive_staples_lewis.profile.update!(
  first_name: 'Clive',
  last_name: 'Staples Lewis',
  description: 'British novelist, poet, academic, medievalist, literary critic, essayist, lay theologian, broadcaster, lecturer, and Christian apologist. Very smart dude, but still most known for children stories.',
  country: 'UK',
  city: 'Oxford',
  image_url: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR95kk-ct4Ew2KCELL4Ixnr640YcsG99hV2jXb9a5_aNveULnFg'
)

christiano_ronaldo = User.create!(
  email: 'christiano_ronaldo@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

christiano_ronaldo.profile.update!(
  first_name: 'Christiano',
  last_name: 'Ronaldo',
  description: 'Portuguese professional footballer who plays for Spanish club Real Madrid and the Portugal national team.  Likes to keep his hair pretty, doesn’t like moths.',
  country: 'Portugal',
  city: 'Funchl',
  image_url: 'http://news.winner.co.uk/wp-content/uploads/2016/05/78.jpg'
)

carla_bruni = User.create!(
  email: 'carla_bruni@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

carla_bruni.profile.update!(
  first_name: 'Carla',
  last_name: 'Bruni',
  description: 'Italian-French singer-songwriter and former model. She is married to former French president Nicolas Sarkozy.',
  country: 'Italy',
  city: 'Turin',
  image_url: 'http://photos.last-video.com/wp-content/uploads/2011/05/photo-noir-et-blanc-carla-bruni.jpg'
)

salvidore_dali = User.create!(
  email: 'salvidore_dali@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

salvidore_dali.profile.update!(
  first_name: 'Salvidore',
  last_name: 'Dali',
  description: 'Prominent Spanish surrealist painter, skilled draftsman, best known for the striking and bizarre images in his surrealist work.',
  country: 'Spain',
  city: 'Figueres',
  image_url: 'http://www.citylifemadrid.com/wp-content/uploads/Dali2.jpg'
)

ludwig_van_beethoven = User.create!(
  email: 'ludwig_van_beethoven@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

ludwig_van_beethoven.profile.update!(
  first_name: 'Ludwig',
  last_name: 'Van Beethoven',
  description: 'German composer. A crucial figure in the transition between the Classical and Romantic eras in Western art music. Composed his most admired pieces being totally deaf.',
  country: 'Austria',
  city: 'Vienna',
  image_url: 'http://cp91279.biography.com/1000509261001/1000509261001_1707055230001_BIO-Biography-18-Composers-Ludwig-van-Beethoven-SF.jpg'
)

vincent_van_gogh = User.create!(
  email: 'vincent_van_gogh@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

vincent_van_gogh.profile.update!(
  first_name: 'Vincent',
  last_name: 'Van Gogh',
  description: 'Dutch Post-Impressionist painter, created around 2100 works that include landscapes, still lifes, portraits and self-portraits. Has secret love for botanics, especially sunflowers.',
  country: 'Netherlands',
  city: 'Zundert',
  image_url: 'http://thefederalist.com/wp-content/uploads/2016/03/Screen-Shot-2016-03-03-at-3.36.28-PM-998x630.jpg'
)

first_half_users = [john_lennon, tracy_chapman, bob_marley, johnny_cash, lenny_kravitz, lauryn_hill, eddie_vedder, syd_barrett, ella_fitzgerald, adele_adkins]

last_half_users = [me, coco_chanel, marilyn_monroe, clive_staples_lewis, christiano_ronaldo, carla_bruni, salvidore_dali, ludwig_van_beethoven, vincent_van_gogh]


# ====================================  Events  =========================================


event_one = me.events.create!(
  title: 'Yewlands Party',
  description: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
  country: 'United Kingdom',
  city: 'Hoddesdon',
  postcode: 'EN11 8BX',
  image_url: 'https://cdn.houle.co.uk/images/Property/large/4/2015/2/24/hoddesdon-hertfordshire-000022038_2488944_IMG_00.jpg',
  latitude: 0.517557328E2,
  longitude: -0.101774E-1,
  start_time: "2000-01-01 06:30:00",
  end_time: "2000-01-01 04:30:00",
  start_date: "2016-08-26",
  end_date: "2016-08-27"
)

event_two = john_lennon.events.create!(
  title: 'Tea Party',
  description: 'Donec iaculis vitae sapien at dapibus. Nunc gravida eros quis ligula semper posuere. Fusce mollis dui sit amet urna aliquet, eu sodales felis lacinia. Integer sed semper quam. Duis vel elementum quam. Curabitur leo eros, ultrices ac odio at, cursus laoreet massa. Quisque in libero et quam pharetra dignissim sed sed sapien. Suspendisse at dictum enim. Mauris quis tellus vitae lectus finibus facilisis ac a diam. Nulla tempor metus neque, et sagittis leo pellentesque id. Nam at dolor vitae metus porttitor pulvinar sit amet ac lacus. Sed tincidunt luctus ligula, vel cursus leo suscipit eget. Cras quis maximus mauris. Donec dapibus mattis auctor. Pellentesque nisl mi, pulvinar at maximus sed, semper quis tellus. Nunc sodales, justo nec elementum laoreet, odio justo bibendum arcu, a malesuada tellus nunc vel tortor.',
  country: 'United Kingdom',
  city: 'Belstone',
  postcode: 'EN20 1RB',
  image_url: 'http://www.amazingdaysevents.com/wp-content/uploads/2014/02/TeaPartyShower_07.jpg',
  latitude: 50.72702349999999,
  longitude: -3.9556041,
  start_time: "2000-01-01 09:00:00",
  end_time: "2000-01-01 20:00:00",
  start_date: "2016-09-24",
  end_date: "2016-18-26"
)

event_three = me.events.create!(
  title: 'Another Event',
  description: 'Integer suscipit, diam a sagittis auctor, elit magna interdum ex, sit amet consequat diam massa at nisi. Ut ac cursus ipsum. Vivamus id est vel ligula facilisis sodales. Integer vitae porttitor nunc, eget faucibus sapien. Curabitur pulvinar velit et elit scelerisque, a egestas odio tempus. Vestibulum tincidunt quam ut felis bibendum luctus. Nunc fermentum eleifend libero, ut fermentum nunc lobortis sit amet. Aenean dignissim magna augue, ac tempor nisi tincidunt ac. Ut malesuada elit vestibulum lorem condimentum hendrerit. Sed egestas, leo at pellentesque euismod, dolor nibh interdum metus, nec bibendum massa velit euismod elit. Donec ac volutpat leo. Cras eleifend consequat dui a pharetra.',
  country: 'United Kingdom',
  city: 'Presteigne',
  postcode: 'Powys 8BX',
  image_url: 'http://www.snowdoniatourism.co.uk/images/snowdonia_lake.jpg',
  latitude: 52.2742497,
  longitude: -3.0051526,
  start_time: "2000-01-01 09:30:00",
  end_time: "2000-01-01 21:30:00",
  start_date: "2016-08-24",
  end_date: "2016-08-26"
)

event_four = me.events.create!(
  title: 'Another Event',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porta finibus arcu, a venenatis libero porta sit amet. Suspendisse vel lectus lacinia, rhoncus turpis id, dapibus libero. Duis vitae faucibus lacus. Phasellus lacus dolor, fermentum nec sem ullamcorper, gravida sodales lectus. Etiam ullamcorper augue ac lectus accumsan, ac lacinia ante facilisis. Donec consequat metus sed porttitor euismod. Aenean sed vehicula ex, nec vestibulum dolor. Nulla facilisi. Sed malesuada elit mi, eget congue velit ultrices elementum. Curabitur est ante, sagittis at est porta, efficitur scelerisque risus. Phasellus eu mauris sem. Quisque dui felis, efficitur non odio vitae, congue convallis lorem.',
  country: 'United Kingdom',
  city: 'Presteigne',
  postcode: 'Powys 8BX',
  image_url: 'http://shoesrb.com/img/wt/014.png',
  latitude: 52.2742497,
  longitude: -3.0051526,
  start_time: "2000-01-01 09:30:00",
  end_time: "2000-01-01 21:30:00",
  start_date: "2016-08-24",
  end_date: "2016-08-26"
)

first_half_events = [event_one, event_two]
last_half_events = [event_three, event_four]

# ==============================  Attending ================================

first_half_events.each do |event|
  last_half_users.each do |user|
    Attendance.create(user_id: user.id, event_id: event.id)
  end
end

last_half_events.each do |event|
  first_half_users.each do |user|
    Attendance.create(user_id: user.id, event_id: event.id)
  end
end

# ==============================  Tags  =======================================

ruby = Tag.create!(name: "Ruby")
javascript = Tag.create!(name: "javascript")
shoes = Tag.create!(name: "shoes")
sql = Tag.create!(name: "sql")
html = Tag.create!(name: "html")
rails = Tag.create!(name: "rails")
jquery = Tag.create!(name: "jquery")
postgres = Tag.create!(name: "postgres")

first_half_tags = [ruby, javascript, shoes, sql]
last_half_tags = [html, rails, jquery, postgres]

first_half_events.each do |event|
  first_half_tags.each do |tag|
    event.tags << tag
  end
end

last_half_events.each do |event|
  last_half_tags.each do |tag|
    event.tags << tag
  end
end

# ==============================  Friends ==========================================

first_half_users.each do |user|
  last_half_users.each do |friend|
    user.friends << friend
  end
end


# ===============================  Comments  =======================================
