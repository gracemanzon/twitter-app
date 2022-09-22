User.create(name: "Robyn", email: "robyn@test.com", password: "password")

User.create(name: "Marcus", email: "marcus@test.com", password: "password")

User.create(name: "Grace", email: "grace@test.com", password: "password")

Relationship.create(follower_id: 1, leader_id: 2)

Relationship.create(follower_id: 2, leader_id: 1)

Relationship.create(follower_id: 3, leader_id: 1)

Tweet.create(
  user_id: 1,
  title: "Title",
  body: "Hello World, it's Robyn!",
)



Tweet.create(
  user_id: 2,
  title: "Title",
  body: "Hello World, it's Marcus!",
)

Tweet.create(
  user_id: 3,
  title: "Title",
  body: "Hello World, it's Grace!",
)

