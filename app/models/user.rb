class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :follower_relationships, class_name: "Relationship", foreign_key: "leader_id"
  has_many :followers, through: :follower_relationships, source: :follower
  has_many :leader_relationships, class_name: "Relationship", foreign_key: "follower_id"
  has_many :leaders, through: :leader_relationships, source: :leader
  has_many :tweets
  has_many :likes
  has_many :comments

  def following?(leader_id)
    relationships = Relationship.where(follower_id: self.id, leader_id: leader_id)
    if relationships.length > 0
      return true
    else
      return false
    end
  end
end
