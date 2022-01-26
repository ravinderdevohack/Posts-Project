class ChangeColumnFromPosts < ActiveRecord::Migration[7.0]
  def change
    change_column_null :posts, :display, true
  end
end
