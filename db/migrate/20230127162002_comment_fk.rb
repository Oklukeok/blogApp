class CommentFk < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :author, :integer
    add_reference :comments, :author, foreign_key: { to_table: 'users' }
  end
end
