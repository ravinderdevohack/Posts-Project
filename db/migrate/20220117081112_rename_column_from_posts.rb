class RenameColumnFromPosts < ActiveRecord::Migration[7.0]
  def change
    change_table :posts do |t|
      t.remove_references :users
      t.belongs_to :user
    end


  end
end
