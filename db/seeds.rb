User.create(name: "Robyn", email: "robyn@test.com", password_digest: "password")

User.create(name: "Marcus", email: "marcus@test.com", password_digest: "password")

User.create(name: "Grace", email: "grace@test.com", password_digest: "password")

Relationship.create(follower_id: 1, leader_id: 2)

Relationship.create(follower_id: 2, leader_id: 1)

Relationship.create(follower_id: 3, leader_id: 1)

Tweet.create(
  user_id: 1,
  title: "Robyn",
  body: "Hello World, it's Robyn!",
)

Tweet.create(
  user_id: 1,
  title: "Robyn",
  body: "Hello World, it's Robyn!",
)

Tweet.create(
  user_id: 2,
  title: "Marcus",
  body: "Hello World, it's Marcus!",
)

Tweet.create(
  user_id: 1,
  title: "Grace",
  body: "Hello World, it's Grace!",
)

