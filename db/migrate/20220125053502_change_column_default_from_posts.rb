class ChangeColumnDefaultFromPosts < ActiveRecord::Migration[7.0]
  def change
    change_column_default :posts, :display, from: nil, to: true
  end
end
