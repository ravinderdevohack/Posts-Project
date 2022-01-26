class CreateColumnInPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :display, :integer, default: 0
  end
end
