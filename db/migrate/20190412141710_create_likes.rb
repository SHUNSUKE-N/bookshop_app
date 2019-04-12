class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.references :bookshop, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :likes, [:user_id, :bookshop_id], unique: true
  end
end