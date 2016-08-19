Attendance.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all

me = User.create!(
  email: 'finn-francis@yahoo.com',
  password: 'password',
  password_confirmation: 'password'
)

profile = me.profile

profile.update!(
  first_name: 'Finn',
  last_name: 'Francis',
  description: 'I am a coder, musician and slackmaste',
  country: 'United Kingdom',
  city: 'London',
  image_url: 'https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/1229903_10151901640200844_1776194532_n.jpg?oh=95ab76e64b579cc450669d8ee078cef2&oe=5841BAE0',
  latitude: 51.5074,
  longitude: 0.1278
)

event = me.events.create!(
  title: 'Yewlands Party',
  description: 'Lots of food, drinks, music and code!',
  country: 'United Kingdom',
  city: 'Hoddesdon',
  postcode: 'EN11 8BX',
  image_url: 'https://cdn.houle.co.uk/images/Property/large/4/2015/2/24/hoddesdon-hertfordshire-000022038_2488944_IMG_00.jpg',
  latitude: 0.517557328E2,
  longitude: -0.101774E-1
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

users = User.where.not(email: 'finn_francis@yahoo.com')

users.each do |user|
  Attendance.create!(
    user_id: user.id,
    event_id: event.id
  )
end
