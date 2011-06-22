class AddCategoryIdToForumThreads < ActiveRecord::Migration
  def change
    add_column :forum_threads, :category_id, :integer
  end
end