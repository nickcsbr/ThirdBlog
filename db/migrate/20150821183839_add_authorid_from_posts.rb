class AddAuthoridFromPosts < ActiveRecord::Migration
  def change
    add_column :posts, :authorid, :string
  end
end
