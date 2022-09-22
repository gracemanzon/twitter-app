User.create(name: "Robyn", email: "robyn@test.com", password: "password", image_url: "https://static.wikia.nocookie.net/avatar/images/1/1f/Ty_Lee%27s_acrobatics.png/revision/latest?cb=20140908142129")

User.create(name: "Marcus", email: "marcus@test.com", password: "password", image_url: "https://upload.wikimedia.org/wikipedia/en/3/3e/Prince_Zuko.jpg")

User.create(name: "Grace", email: "grace@test.com", password: "password", image_url: "https://thewellesleynews.com/wp-content/uploads/2020/09/avatar.jpg")

Relationship.create(follower_id: 1, leader_id: 2)

Relationship.create(follower_id: 2, leader_id: 1)

Relationship.create(follower_id: 3, leader_id: 1)

Tweet.create(
  user_id: 1,
  title: "Robyn",
  body: "Hello World, it's Robyn!",
  image_url: "https://thumbs.dreamstime.com/b/bee-flower-27533578.jpg"
)


Tweet.create(
  user_id: 2,
  title: "Marcus",
  body: "Hello World, it's Marcus!",
  image_url: "https://thumbs.dreamstime.com/b/bee-collecting-pollen-2250640.jpg"
)

Tweet.create(
  user_id: 3,
  title: "Grace",
  body: "Hello World, it's Grace!",
  image_url: "https://thumbs.dreamstime.com/b/landscape-nature-mountan-alps-rainbow-76824355.jpg"
)


