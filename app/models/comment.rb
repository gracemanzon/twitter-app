class Comment < ApplicationRecord
  belongs_to :tweet
  belongs_to :user
  validates :body, :user, presence: true
end
