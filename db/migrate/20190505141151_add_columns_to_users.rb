class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :description, :string
    add_column :users, :comments_count, :integer, default: 0
    add_column :users, :likes_count, :integer, default: 0
  end
end
