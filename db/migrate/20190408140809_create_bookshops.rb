class CreateBookshops < ActiveRecord::Migration[5.1]
  def change
    create_table :bookshops do |t|
      t.string :name
      t.string :phone
      t.text :image_data
      t.string :address
      t.string :area
      t.string :station
      t.string :url
      t.string :twitter_url
      t.string :google_map_url
      t.text :business_hour
      t.string :holiday
      t.text :access
      t.integer :comments_count, default: 0
      t.integer :likes_count, default: 0

      t.timestamps
    end
  end
end
