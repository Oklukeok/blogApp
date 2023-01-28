class Users < ApplicationRecord
  has_many :comments, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id
  has_many :posts, foreign_key: :author_id

  def latest_posts
    posts.order(created_at: :desc).limit(3)
  end

  # Validations
  validates :name, presence: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
