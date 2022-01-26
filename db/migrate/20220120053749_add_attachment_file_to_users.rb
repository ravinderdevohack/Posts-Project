class AddAttachmentFileToUsers < ActiveRecord::Migration[7.0]

  def up
    add_column :users, :file, :string
  end

  def down
    remove_column :users, :file, :string
  end
end
