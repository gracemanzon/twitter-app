User.create(name: "Robyn", email: "robyn@test.com", password: "password", image_url: "https://www.looper.com/img/gallery/why-ty-lee-from-avatar-the-last-airbender-is-more-important-than-you-think/intro-1601996999.jpg")

User.create(name: "Marcus", email: "marcus@test.com", password: "password", image_url: "https://upload.wikimedia.org/wikipedia/en/3/3e/Prince_Zuko.jpg")

User.create(name: "Grace", email: "grace@test.com", password: "password", image_url: "https://thewellesleynews.com/wp-content/uploads/2020/09/avatar.jpg")

Relationship.create(follower_id: 1, leader_id: 2)

Relationship.create(follower_id: 2, leader_id: 1)

Relationship.create(follower_id: 3, leader_id: 1)

Tweet.create(
  user_id: 1,
  title: "tweet title by robyn",
  body: "Hello World, it's Robyn!",
  image_url: "https://thumbs.dreamstime.com/b/bee-flower-27533578.jpg",
)

Tweet.create(
  user_id: 2,
  title: "tweet title by marcus",
  body: "Hello World, it's Marcus!",
  image_url: "https://thumbs.dreamstime.com/b/bee-collecting-pollen-2250640.jpg",
)

Tweet.create(
  user_id: 3,
  title: "tweet title by grace",
  body: "Hello World, it's Grace!",
  image_url: "https://thumbs.dreamstime.com/b/landscape-nature-mountan-alps-rainbow-76824355.jpg",
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
