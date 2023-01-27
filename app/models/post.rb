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
end
