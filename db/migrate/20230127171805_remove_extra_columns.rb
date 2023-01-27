class RemoveExtraColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :author
    remove_column :comments, :post
    remove_column :likes, :author
    remove_column :likes, :post
    remove_column :posts, :author
  end
end
