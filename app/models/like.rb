class Like < ApplicationRecord
  belong_to :users, foreing_key: 'author_id', class_name: 'Users'
  belong_to :post, foreing_key: 'post_id', class_name: 'Post'

  def update_likes_counter
    post.increment(:likes_counter)
  end
end
