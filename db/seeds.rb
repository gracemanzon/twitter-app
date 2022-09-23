User.create(name: "Robyn", email: "robyn@test.com", password: "password", image_url: "https://www.looper.com/img/gallery/why-ty-lee-from-avatar-the-last-airbender-is-more-important-than-you-think/intro-1601996999.jpg")

User.create(name: "Marcus", email: "marcus@test.com", password: "password", image_url: "https://upload.wikimedia.org/wikipedia/en/3/3e/Prince_Zuko.jpg")

User.create(name: "Grace", email: "grace@test.com", password: "password", image_url: "https://thewellesleynews.com/wp-content/uploads/2020/09/avatar.jpg")


User.create(name: "Kevyn", email: "kevyn@test.com", password: "password", image_url: "https://qph.cf2.quoracdn.net/main-qimg-8f6df1af9a46d5b2e81e6eaf0543d86a-lq")

User.create(name: "Greg", email: "greg@test.com", password: "password", image_url: "https://pbs.twimg.com/profile_images/3541863016/6ac8c451e0e45a13050ed5f3f1dd25ee_400x400.png")

User.create(name: "Joey", email: "joey@test.com", password: "password", image_url: "https://www.looper.com/img/gallery/netflixs-avatar-the-last-airbender-has-finally-found-its-fire-lord-ozai/l-intro-1635984181.jpg")

Relationship.create(follower_id: 1, leader_id: 2)

Relationship.create(follower_id: 2, leader_id: 1)

Relationship.create(follower_id: 3, leader_id: 1)

Tweet.create(
  user_id: 1,
  title: "Site is up",
  body: "Hello World, it's Robyn. I helped make this app!",
  image_url: "https://preview.redd.it/5yhx7zsi7ug81.jpg?width=640&crop=smart&auto=webp&s=af94ec8e098d27f9b2ee3160c0e889674a3291e5",
)

Tweet.create(
  user_id: 2,
  title: "Suggestions",
  body: "Hello World, it's Marcus. Got any suggestions on how to improve our site? Comment below",
  image_url: "https://codingbootcamps.io/wp-content/uploads/m2.png",
)

Tweet.create(
  user_id: 3,
  title: "Thoughts",
  body: "This website is banging! I think we made Joey proud.",
  image_url: "https://ichef.bbci.co.uk/images/ic/1920x1080/p05lqc4f.jpg",
)

Tweet.create(
  user_id: 4,
  title: "Feeling blue",
  body: "Day 3, still haven't recovered from covid smh :(",
)

Tweet.create(
  user_id: 5,
  title: "Meme of the day",
  body: "lol",
  image_url: "https://preview.redd.it/1gpqmbfm7um91.gif?width=640&format=mp4&s=b5533ec9d5ad285f0f1139d5ad5299fa5d4d1322",
)

Tweet.create(
  user_id: 6,
  title: "THIS SUCKS?",
  body: "I am deleting my account",
  image_url: "https://c.tenor.com/hgYm7BcnSx0AAAAC/lame.gif",
)


Tweet.create(
  user_id: 2,
  title: "so true",
  body: "enjoy the memes",
  image_url: "https://preview.redd.it/bg0xjiz5u9k91.gif?width=640&format=mp4&s=8400e5a502fafac6b73e44b1f2ac1c30e4818451",
)


Tweet.create(
  user_id: 1,
  title: "haha",
  body: "wow, so relatable",
  image_url: "https://preview.redd.it/vgo85g9ozfj91.jpg?width=640&crop=smart&auto=webp&s=cbaf529e2c67f98258c63af8652028d1eb9853e2",
)

Tweet.create(
  user_id: 2,
  title: "rofl",
  body: "probably what rlly happened lol",
  image_url: "https://preview.redd.it/gph4rp6drvo41.jpg?width=640&crop=smart&auto=webp&s=a407a7be1da73ba010f0295a6351ab9d14471b2a",
)




# 10.times do
#   User.create(
#     name: FFaker::Name.first_name,
#     email: FFaker::Internet.email,
#     password: "password",
#     image_url: FFaker::Avatar.image,
#   )
# end

# 10.times do
#   Tweet.create(
#     user_id: FFaker::Number.number,
#     title: FFaker::Tweet.tags,
#     body: FFaker::Tweet.body,
#     image_url: FFaker::Image.url,
#   )
# end
