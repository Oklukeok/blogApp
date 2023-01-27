class AddFkLikes < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :author, :integer
    add_reference :likes, :author, foreign_key: { to_table: 'users' }
    add_column :likes, :post, :text
    add_reference :likes, :post, foreign_key: { to_table: 'posts' }
  end
end
