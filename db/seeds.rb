User.create(name: "Robyn", email: "robyn@test.com", password_digest: "password")

User.create(name: "Marcus", email: "marcus@test.com", password_digest: "password")

User.create(name: "Grace", email: "grace@test.com", password_digest: "password")

Relationship.create(follower_id: 4, leader_id: 5)

Relationship.create(follower_id: 5, leader_id: 4)

Relationship.create(follower_id: 6, leader_id: 4)
