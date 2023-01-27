class RemoveAuthorComment < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :author_id
  end
end
