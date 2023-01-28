class Post < ApplicationRecord
  belongs_to :author, foreign_key: 'author_id', class_name: 'Users'
  has_many :comments, foreign_key: :post_id
  has_many :likes, foreign_key: :post_id

  def update_posts_counter
    author.increment(:posts_counter)
  end

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end

  # Validations
  validates :title, presence: true
  validates :title, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
