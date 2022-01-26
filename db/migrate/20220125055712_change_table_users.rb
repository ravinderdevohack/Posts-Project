class ChangeTableUsers < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.remove :file
      t.column :display, :boolean, default: true
    end
  end
end
